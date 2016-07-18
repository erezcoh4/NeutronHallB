
TH1F * GetDetectionEfficiency( TTree * , double , int );




//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
void DetectionEfficiency( int run = 1 , int Sector = 1 ) {
    gStyle->SetOptStat(0000);
    TString comments;
    switch (run) {
        case 1:
            comments = "no electronic boxes";
            break;
        case 2:
            comments = "with electronic boxes";
            break;
            
        default:
            break;
    }
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    TPlots * plot = new TPlots( Form("/Users/erezcohen/Desktop/NeutronHallB/G4_root_files/BANDgeant4_run%d.root",run) , "Ntuple" );
    TTree * tree = plot->GetTree();
    const int N = 4;
    TH1F * hDetEff[N];
    TString Labels[N];
    int              colors[N] = {31 , 36  , 41 , 46    };
    double   ThrshldEdepMeV[N] = {0. , 5.5 , 7. , 11.   };
    double ThrshldEdepMeVee[N] = {0. , 2.  , 3. , 5.    };
    for (int i = 0 ; i < N ; i++){
        hDetEff[i] = GetDetectionEfficiency( tree , ThrshldEdepMeV[i] , Sector );
        Labels[i] = Form("Threshold = %.1f MeV (%.0f MeVee) ",ThrshldEdepMeV[i]  , ThrshldEdepMeVee[i] );
    }
    plot -> MultipleHistograms( N , (TH1**)hDetEff , Labels  , 0 , 510 , Form("def. eff. for neutrons (sector %d , %s)",Sector,comments.Data()) , "generated neutron momentum [MeV/c]" , "detection efficiency [%]" , colors  );
    
}






//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
TH1F * GetDetectionEfficiency( TTree * Tree , double ThrshldEdepMeV , int fSector ){
    
    double PMin = 0 , PMax = 510 ;
    int Nbins = (int)((PMax - PMin)/10.) + 1;
    
    double Momentum;
    Tree -> SetBranchAddress("Momentum_g"           , &Momentum);
    int ParticleReachedDet;
    Tree -> SetBranchAddress("NeutronReachedDet"    , &ParticleReachedDet);
    double EnergyDeposition;
    Tree -> SetBranchAddress("EnergyDeposition"     , &EnergyDeposition);
    int Sector_g;
    Tree -> SetBranchAddress("Sector_g"             , &Sector_g);

    TH1F * hMomentum        = new TH1F (Form("hMomentum_%d",(int)ThrshldEdepMeV),"Momentum", Nbins , PMin , PMax);
    TH1F * hDet_Momentum    = new TH1F (Form("hDet_Momentum_%d",(int)ThrshldEdepMeV),"Detected Per Momentum", Nbins , PMin , PMax);
    for (int entry = 0 ; entry < Tree->GetEntries() ; entry++ ){
        Tree -> GetEntry(entry);
        if (Sector_g==fSector && ParticleReachedDet){
            hMomentum -> Fill(Momentum);
            if (EnergyDeposition > ThrshldEdepMeV){
                hDet_Momentum -> Fill(Momentum);
            }
        }
    }
    TH1F * hDetEff = new TH1F(Form("hDetEff_%d",(int)ThrshldEdepMeV)," ",Nbins , PMin , PMax);
    for (int bin = 0 ; bin < Nbins ; bin++){
        if (hMomentum -> GetBinContent(bin))
            hDetEff -> SetBinContent( bin , 100.*(double)hDet_Momentum->GetBinContent(bin)/(double)hMomentum->GetBinContent(bin) );
        else
            hDetEff -> SetBinContent( bin , 0 );
    }

    return hDetEff;
}







