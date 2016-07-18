// ********************************************************************
// NeutronHallB simulation
// ********************************************************************
/// \file NeutronHallBTrackerSD.hh
/// \brief Definition of the NeutronHallBTrackerSD class

#ifndef NeutronHallBTrackerSD_h
#define NeutronHallBTrackerSD_h 1

#include "G4VSensitiveDetector.hh"

#include "NeutronHallBTrackerHit.hh"

#include <vector>

class G4Step;
class G4HCofThisEvent;

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

/// NeutronHallBTracker sensitive detector class
///
/// The hits are accounted in hits in ProcessHits() function which is called
/// by Geant4 kernel at each step. A hit is created with each step with non zero 
/// energy deposit.

class NeutronHallBTrackerSD : public G4VSensitiveDetector
{
  public:
    NeutronHallBTrackerSD(const G4String& name, 
                const G4String& hitsCollectionName);
    virtual ~NeutronHallBTrackerSD();
  
    // methods from base class
    virtual void   Initialize(G4HCofThisEvent* hitCollection);
    virtual G4bool ProcessHits(G4Step* step, G4TouchableHistory* history);
    virtual void   EndOfEvent(G4HCofThisEvent* hitCollection);

  private:
    NeutronHallBTrackerHitsCollection* fHitsCollection;
};

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#endif
