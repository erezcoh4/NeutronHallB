// ********************************************************************
// NeutronHallB simulation
// ********************************************************************
/// \file NeutronHallBActionInitialization.hh
/// \brief Definition of the NeutronHallBActionInitialization class

#ifndef NeutronHallBActionInitialization_h
#define NeutronHallBActionInitialization_h 1

#include "G4VUserActionInitialization.hh"

class B4DetectorConstruction;

/// Action initialization class.
///

class NeutronHallBActionInitialization : public G4VUserActionInitialization
{
  public:
    NeutronHallBActionInitialization();
    virtual ~NeutronHallBActionInitialization();

    virtual void BuildForMaster() const;
    virtual void Build() const;
};

#endif

    
