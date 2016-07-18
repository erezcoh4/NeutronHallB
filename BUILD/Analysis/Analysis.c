
void Analysis( int run = 0 , char * Particle = "neutron") {
    printf("processing run %d\n",run);
    
    TCut cutHit = "NeutronReachedDet";
    TCut cutSec1_g = "Sector_g == 1";
    TCut cutSec2_g = "Sector_g == 2";
    TCut cutSec1 = "Sector == 1";
    TCut cutSec2 = "Sector == 2";
    
    bool DoDetectionEfficiency  = true;
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    
    TPlots * plot = new TPlots( Form("/Users/erezcohen/Desktop/NeutronHallB/G4_root_files/NeutronHallB_run00%d.root",run) , "Ntuple" );
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoDetectionEfficiency){
        TCanvas * cDetEff = new TCanvas("cDetEff","Detection efficiency");
        TTree * Tree = plot -> GetTree();
        const int N = 4;
        TH1F * hDetEff[N];
        char * Labels[N];
        double ThrshldEdepMeV[N] = {0. , 5.5 , 7. , 11.};
        double ThrshldEdepMeVee[N] = {0. , 2. , 3. , 5.};
        for (int i = 0 ; i < N ; i++){
            hDetEff[i] = GetDetectionEfficiency( Tree , ThrshldEdepMeV[i] , ThrshldEdepMeVee[i] );
            Labels[i] = Form("Thrshld = %.1f MeV (%.1f MeVee) ",ThrshldEdepMeV[i],ThrshldEdepMeVee[i]);
        }
        plot -> Histograms( N , hDetEff , Labels , "Detection Efficiency for neutrons in proposed BAND" , "generated neutron momentum [MeV/c]" , "detection efficiency [%]" , 0 , 510 , 105 , false );
    }
    
}






//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
TH1F * GetDetectionEfficiency( TTree * Tree , double ThrshldEdepMeV , double ThrshldEdepMeVee){
    
    double PMin = 0 , PMax = 510 ;
    int Nbins = (int)((PMax - PMin)/10.) + 1;
    
    double Momentum;
    Tree -> SetBranchAddress("Momentum_g"             , &Momentum);
    int ParticleReachedDet;
    Tree -> SetBranchAddress("NeutronReachedDet"    , &ParticleReachedDet);
    double EnergyDeposition;
    Tree -> SetBranchAddress("EnergyDeposition"     , &EnergyDeposition);

    TH1F * hMomentum        = new TH1F (Form("hMomentum_%d",(int)ThrshldEdepMeV),"Momentum", Nbins , PMin , PMax);
    TH1F * hDet_Momentum    = new TH1F (Form("hDet_Momentum_%d",(int)ThrshldEdepMeV),"Detected Per Momentum", Nbins , PMin , PMax);
    for (int entry = 0 ; entry < Tree->GetEntries() ; entry++ ){
        Tree -> GetEntry(entry);
//        if (ParticleReachedDet==1){
            hMomentum -> Fill(Momentum);
            if (EnergyDeposition > ThrshldEdepMeV){
                hDet_Momentum -> Fill(Momentum);
            }
//        }
    }
    
    TH1F * hDetEff = new TH1F(Form("hDetEff_%d",(int)ThrshldEdepMeV)," ",Nbins , PMin , PMax);
    for (int bin = 0 ; bin < Nbins ; bin++){
        if (hMomentum -> GetBinContent(bin))
            hDetEff -> SetBinContent( bin , 100.*(double)hDet_Momentum->GetBinContent(bin)/(double)hMomentum->	GetBinContent(bin) );
        else
            hDetEff -> SetBinContent( bin , 0 );
    }
    
//    TPlots plot;
//    plot.SetFrame(hDetEff, Form("Det. Efficiency, Edep Threshold = %.1f MeV (%.1f MeVee) ",ThrshldEdepMeV,ThrshldEdepMeVee) , "generated neutron momentum [MeV]" , "Detection Efficiency [%]");
    return hDetEff;
}







