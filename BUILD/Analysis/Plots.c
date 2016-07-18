
void Plots(char * FileName = "New" , char * Particle = "neutron") {
    
    TCut cutHit = "NeutronReachedDet";
    TCut cutSec1_g = "Sector_g == 1";
    TCut cutSec2_g = "Sector_g == 2";
    TCut cutSec1 = "Sector == 1";
    TCut cutSec2 = "Sector == 2";
    
    bool DoMomentumAcceptance   = false;
    bool DoRadiiDistribution    = false;
    bool DoScatteringAngle      = false;
    bool DoAngle                = false;
    bool DoKineticEnergy        = (Particle=="neutron") ? false : false ;
    bool DoMomentum             = (Particle=="gamma") ? false : false ;
    bool DoEnergyDeposition     = true;
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (FileName == "New"){
        TPlots * plot = new TPlots( "Ntuple" , "Output_t0.root"  , "Output_t1.root" , "/Users/erezcohen/GEANT/NeutronHallB/build/" );
    } else {
        TPlots * plot = new TPlots( Form("/Users/erezcohen/GEANT/NeutronHallB/build/rootfiles/%s",FileName) , "Ntuple" );
    }
    


    
    
    
    
    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoEnergyDeposition){
        TCanvas * cEnergyDeposition = new TCanvas("cEnergyDeposition" , "Energy Deposition");
        cEnergyDeposition -> Divide(2,1);
        
        // Sector 1 (10.5 < theta < 17.3)
        cEnergyDeposition -> cd(1);
        plot -> H1( "EnergyDeposition"  , cutSec1_g && cutHit , "", 31 , 0. , 150. ,"Energy deposition [MeV]" , ""  , 1  ,  Form("%s flying to sector 1 & Hit BAND",Particle));
        gPad -> SetLogy();
        
        // Sector 1 (17.3 < theta < 21.35)
        cEnergyDeposition -> cd(2);
        plot -> H1( "EnergyDeposition"  , cutSec2_g && cutHit , "", 31 , 0. , 150. , "Energy deposition [MeV]" , ""  , 1  , Form("%s flying to sector 2 & Hit BAND",Particle));
        gPad -> SetLogy();
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoKineticEnergy){
        TCanvas * cKineticEnergy = new TCanvas("cKineticEnergy","Kinetic Energy");
        cKineticEnergy -> Divide(2,2);
        
        double XMax = 150. , XMin = 0.;
        int Nbins = (int)(XMax - XMin);
        
        // Sector 1 (10.5 < theta < 17.3)
        char * LabelsSec1[2] = {"Flied towards Sector 1","Hit BAND"};
        cKineticEnergy -> cd (1);
        TH1F * hK_Sec1[2];
        hK_Sec1[0] = plot -> H1( "KineticEnergy_g"  , cutSec1_g , ""    , Nbins , XMin , XMax , "K [MeV]" , ""  , 1 );
        hK_Sec1[1] = plot -> H1( "KineticEnergy"    , cutSec1_g , "same", Nbins , XMin , XMax , "K [MeV]" , ""  , 2  );
        plot -> AddLegend(Form("%s Kinetic energy",Particle) , 2 , hK_Sec1, LabelsSec1 , 1 , "l" , false );
        
        
        cKineticEnergy -> cd (2);
        TH1F * hK_Acc_Sec1 = new TH1F("hK_Acc_Sec1",Form("Acceptance of %s flying to Sector 1",Particle) , Nbins , XMin , XMax  );
        for ( int bin = 0 ; bin < Nbins ; bin++ ){
            if ( hK_Sec1[0]->GetBinContent(bin) > 0.1 )
                hK_Acc_Sec1 -> SetBinContent ( bin , 100.*(double)hK_Sec1[1]->GetBinContent(bin) / (double)hK_Sec1[0]->GetBinContent(bin) );
            else
                hK_Acc_Sec1 -> SetBinContent ( bin , 0 );
        }
        plot -> SetFrame(hK_Acc_Sec1 , Form("Acceptance of %s flying to Sector 1",Particle) , "K [MeV]" , "acceptance [%]" );
        hK_Acc_Sec1 -> SetFillColor(38);
        hK_Acc_Sec1 -> Draw();
        
        
        // Sector 2  (17.3 < theta < 21.35)
        char * LabelsSec2[2] = {"Flied towards Sector 2","Hit BAND"};
        cKineticEnergy -> cd (3);
        TH1F * hK_Sec2[2];
        hK_Sec2[0] = plot -> H1( "KineticEnergy_g"  , cutSec2_g , ""    , Nbins , XMin , XMax , "K [MeV]" , ""  , 1 );
        hK_Sec2[1] = plot -> H1( "KineticEnergy"    , cutSec2_g , "same", Nbins , XMin , XMax , "K [MeV]" , ""  , 2  );
        plot -> AddLegend(Form("%s Kinetic energy",Particle) , 2 , hK_Sec2, LabelsSec2 , 1 , "l" , false );
        
        
        cKineticEnergy -> cd (4);
        TH1F * hK_Acc_Sec2 = new TH1F("hK_Acc_Sec2",Form("Acceptance of %s flying to Sector 2",Particle) , Nbins , XMin , XMax  );
        for ( int bin = 0 ; bin < Nbins ; bin++ ){
            if ( hK_Sec2[0]->GetBinContent(bin) > 0.1 )
                hK_Acc_Sec2 -> SetBinContent ( bin , 100.*(double)hK_Sec2[1]->GetBinContent(bin) / (double)hK_Sec2[0]->GetBinContent(bin) );
            else
                hK_Acc_Sec2 -> SetBinContent ( bin , 0 );
        }
        plot -> SetFrame(hK_Acc_Sec2 , Form("Acceptance of %s flying to Sector 2",Particle) , "K [MeV]" , "acceptance [%]" );
        hK_Acc_Sec2 -> SetFillColor(38);
        hK_Acc_Sec2 -> Draw();
    }
    
    
    
    
    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoMomentum && Particle=="gamma"){
        TCanvas * cMomentum = new TCanvas("cKineticEnergy","Kinetic Energy");
        cMomentum -> Divide(2,2);
        
        double XMax = 105. , XMin = 0.;
        int Nbins = (int)(XMax - XMin);
        
        // Sector 1 (10.5 < theta < 17.3)
        char * LabelsSec1[2] = {"Flied towards Sector 1","Hit BAND"};
        cMomentum -> cd (1);
        TH1F * hP_Sec1[2];
        hP_Sec1[0] = plot -> H1( "Momentum_g"  , cutSec1_g , ""    , Nbins , XMin , XMax , "E [MeV]" , ""  , 1 );
        hP_Sec1[1] = plot -> H1( "Momentum"    , cutSec1_g , "same", Nbins , XMin , XMax , "E [MeV]" , ""  , 2  );
        plot -> AddLegend(Form("%s Energy",Particle) , 2 , hP_Sec1, LabelsSec1 , 1 , "l" , false );
        
        
        cMomentum -> cd (2);
        TH1F * hP_Acc_Sec1 = new TH1F("hP_Acc_Sec1",Form("Acceptance of %s flying to Sector 1",Particle) , Nbins , XMin , XMax  );
        for ( int bin = 0 ; bin < Nbins ; bin++ ){
            if ( hP_Sec1[0]->GetBinContent(bin) > 0.1 )
                hP_Acc_Sec1 -> SetBinContent ( bin , 100.*(double)hP_Sec1[1]->GetBinContent(bin) / (double)hP_Sec1[0]->GetBinContent(bin) );
            else
                hP_Acc_Sec1 -> SetBinContent ( bin , 0 );
        }
        plot -> SetFrame(hP_Acc_Sec1 , Form("Acceptance of %s flying to Sector 1",Particle) , "E [MeV]" , "acceptance [%]" );
        hP_Acc_Sec1 -> SetFillColor(38);
        hP_Acc_Sec1 -> Draw();
        
        
        // Sector 2  (17.3 < theta < 21.35)
        char * LabelsSec2[2] = {"Flied towards Sector 2","Hit BAND"};
        cMomentum -> cd (3);
        TH1F * hP_Sec2[2];
        hP_Sec2[0] = plot -> H1( "Momentum_g"  , cutSec2_g , ""    , Nbins , XMin , XMax , "E [MeV]" , ""  , 1 );
        hP_Sec2[1] = plot -> H1( "Momentum"    , cutSec2_g , "same", Nbins , XMin , XMax , "E [MeV]" , ""  , 2  );
        plot -> AddLegend(Form("%s Energy",Particle) , 2 , hP_Sec2, LabelsSec2 , 1 , "l" , false );
        
        
        cMomentum -> cd (4);
        TH1F * hP_Acc_Sec2 = new TH1F("hP_Acc_Sec2",Form("Acceptance of %s flying to Sector 2",Particle) , Nbins , XMin , XMax  );
        for ( int bin = 0 ; bin < Nbins ; bin++ ){
            if ( hP_Sec2[0]->GetBinContent(bin) > 0.1 )
                hP_Acc_Sec2 -> SetBinContent ( bin , 100.*(double)hP_Sec2[1]->GetBinContent(bin) / (double)hP_Sec2[0]->GetBinContent(bin) );
            else
                hP_Acc_Sec2 -> SetBinContent ( bin , 0 );
        }
        plot -> SetFrame(hP_Acc_Sec2 , Form("Acceptance of %s flying to Sector 2",Particle) , "E [MeV]" , "acceptance [%]" );
        hP_Acc_Sec2 -> SetFillColor(38);
        hP_Acc_Sec2 -> Draw();
        
    }

   
    
    
    
    
    
    
    
    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoMomentumAcceptance){
        // Sector 1 (612 mm < r < 1029 mm) (10.5 < theta < 17.3)
        char * LabelsSec1[2] = {"Flied towards Sector 1","Hit Sector 1"};
        TCanvas * cSec1 = new TCanvas("cSec1","BAND Sector 1: 612 mm < r < 1029 mm",800,800);
        cSec1 -> Divide(2,2);
        
        cSec1 -> cd (1);
        TH1F * h_p_Sec1[2];
        h_p_Sec1[0] = plot -> H1( "Momentum_g" , cutSec1_g , "" , 101 , 0 , 600  , "|p| [MeV/c]" , ""  , 1 );
        h_p_Sec1[1] = plot -> H1( "Momentum" , cutSec1 , "same"  , 101 , 0 , 600 , "|p| [MeV/c]" , ""  , 2 );
        
        cSec1 -> cd (2);
        plot -> H2( "Momentum_g" , "100.*(MomentumLoss/Momentum_g)" , cutSec1 && cutSec1_g , "colz" , 101 , 0 , 600 , 101 , 0 , 10   , "|p| [MeV/c]" , "#Delta|p|/|p| [%]" , 1 , "Momentum Loss");
        
        
        cSec1 -> cd (3);
        TH1F * h_Efficiency_Sec1 = new TH1F("h_Efficiency_Sec1","Efficiency Sector 1" , 101 , 0 , 600  );
        for ( int bin = 0 ; bin < 101 ; bin++ ){
            if ( h_p_Sec1[0]->GetBinContent(bin) > 0.1 )
                h_Efficiency_Sec1 -> SetBinContent ( bin , 100*(double)h_p_Sec1[1]->GetBinContent(bin) / (double)h_p_Sec1[0]->GetBinContent(bin) );
            else
                h_Efficiency_Sec1 -> SetBinContent ( bin , 0 );
        }
        h_Efficiency_Sec1 -> SetFillColor(38);
        plot -> SetFrame(h_Efficiency_Sec1 , "Neutron acceptance - sector 1" , "|p| [MeV/c]" , "acceptance [%]" );
        h_Efficiency_Sec1 -> Draw();
        printf("integrated acceptance = %f%%\n",100.*(h_Efficiency_Sec1->Integral())/(double)h_Efficiency_Sec1->GetNbinsX());
        
        cSec1 -> cd (4);
        TH1F * h_E_k_Sec1[2];
        h_E_k_Sec1[0] = plot -> H1( "KineticEnergy_g" , cutSec1_g , "" , 151 , 0 , 150 , "K [MeV]" , ""  , 1 );
        h_E_k_Sec1[1] = plot -> H1( "KineticEnergy" , cutSec1 && cutSec1_g , "same"  , 151 , 0 , 150 , "K [MeV]" , ""  , 2  );
        plot -> AddLegend("Neutron Kinetic energy" , 2 , h_E_k_Sec1, LabelsSec1 , 1 , "l" , false );
        
        
        
        
        
        //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
        // Sector 2 (1029 mm < r < 1292 mm) (17.3 < theta < 21.35)
        char * LabelsSec2[2] = {"Flied towards Sector 2","Hit Sector 2"};
        TCanvas * cSec2 = new TCanvas("cSec2","BAND Sector 2: 1029 mm < r < 1292 mm",800,800);
        cSec2 -> Divide(2,2);
        
        cSec2 -> cd (1);
        TH1F * h_p_Sec2[2];
        h_p_Sec2[0] = plot -> H1( "Momentum_g" , cutSec2_g , "" , 101 , 0 , 600  , "|p| [MeV/c]" , ""  , 1 );
        h_p_Sec2[1] = plot -> H1( "Momentum" , cutSec2 && cutSec2_g, "same"  , 101 , 0 , 600 , "|p| [MeV/c]" , ""  , 2 );
        
        cSec2 -> cd (2);
        plot -> H2("Momentum_g", "100.*(MomentumLoss/Momentum_g)", cutSec2 && cutSec2_g, "colz" , 101 , 0 , 600 , 101 , 0 , 10   , "|p| [MeV/c]" , "#Delta|p|/|p| [%]"  , 1 , "Momentum Loss" );
        
        
        cSec2 -> cd (3);
        TH1F * h_Efficiency_Sec2 = new TH1F("h_Efficiency_Sec2","Efficiency Sector 1" , 101 , 0 , 600  );
        for ( int bin = 0 ; bin < 101 ; bin++ ){
            if ( h_p_Sec2[0]->GetBinContent(bin) > 0.1 )
                h_Efficiency_Sec2 -> SetBinContent ( bin , 100*(double)h_p_Sec2[1]->GetBinContent(bin) / (double)h_p_Sec2[0]->GetBinContent(bin) );
            else
                h_Efficiency_Sec2 -> SetBinContent ( bin , 0 );
        }
        plot -> SetFrame(h_Efficiency_Sec2 , "Neutron acceptance - sector 2" , "|p| [MeV/c]" , "acceptance [%]" );
        h_Efficiency_Sec2 -> SetFillColor(38);
        h_Efficiency_Sec2 -> Draw();
        printf("integrated acceptance = %f%%\n",h_Efficiency_Sec2->Integral()/(double)h_Efficiency_Sec2->GetNbinsX());
        
        
        cSec2 -> cd (4);
        TH1F * h_E_k_Sec2[2];
        h_E_k_Sec2[0] = plot -> H1( "KineticEnergy_g" , cutSec2_g , "" , 151 , 0 , 150 , "K [MeV]" , ""  , 1 );
        h_E_k_Sec2[1] = plot -> H1( "KineticEnergy" , cutSec2 && cutSec2_g, "same"  , 151 , 0 , 150 , "K [MeV]" , ""  , 2  );
        plot -> AddLegend("Neutron Kinetic energy" , 2 , h_E_k_Sec2, LabelsSec2 , 1 , "l" , false );
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoRadiiDistribution){
        TCanvas * cR = new TCanvas("cR","Generated flying  towards sector 1 (10.5 < theta < 17.3) and 2 (17.3 < theta < 20.5)");
        TH1F * hR = plot -> H1( "3304*tan(theta_g*3.1415/180.)" , "" , "" , 1001 , 0 , 2000  , "r [mm]" , ""  , 2 , "neutron flew towards BAND");
        plot -> H1( "3304*tan(Theta*3.1415/180.)" , "" , "same" , 1001 , 0 , 2000  , "r [mm]" , ""  , 1 , "neutron flew towards BAND");
//        cR -> Divide(1,2);
//        cR -> cd(1);
//        TH1F * hR_Sec1 = plot -> H1( "3304*tan(theta_g*3.1415/180.)" , cutSec1_g , "" , 1001 , 0 , 2000  , "r [mm]" , ""  , 2 , "neutron flew towards Sector 1 (10.5 < #theta < 17.3)");
//        plot -> H1( "sqrt(x**2+y**2)" , cutSec1_g , "same" , 1001 , 0 , 2000  , "r [mm]" , ""  , 1 );
        plot -> Line( 612 , 0 , 612 , hR->GetMaximum()*1.05 , 46 , 2 , 1 , 0.5 );
//        plot -> Text( 470 , 300 , "612 mm" , 46 );
        plot -> Line( 1029 , 0 , 1029 , hR->GetMaximum()*1.05 , 46 , 2 , 1 , 0.5 );
//        plot -> Text( 1050 , 300 , "1029 mm" , 46 );
        plot -> Text( 700 , 300 , "Sec. 1" , 38 );
//        cR -> cd(2);
//        TH1F * hR_Sec2 = plot -> H1( "3304*tan(theta_g*3.1415/180.)" , cutSec2_g , "" , 1001 , 0 , 2000  , "r [mm]" , ""  , 2 , "neutron flew towards Sector 2 (17.3 < #theta < 20.5)");
//        plot -> H1( "sqrt(x**2+y**2)" , cutSec2_g , "same" , 1001 , 0 , 2000 , "r [mm]" , ""  , 1 );
//        plot -> Line( 1029 , 0 , 1029 , hR_Sec2->GetMaximum()*1.05 , 46 , 2 , 1 , 0.5 );
//        plot -> Text( 850 , 300 , "1029 mm" , 46 );
        plot -> Line( 1235 , 0 , 1235 , hR->GetMaximum()*1.05 , 46 , 2 , 1 , 0.5 );
//        plot -> Text( 1250 , 300 , "1235 mm" , 46 );
        plot -> Text( 1050 , 300 , "Sec. 2" , 38 );
//    }
    }
    
    
    
    

    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoScatteringAngle){
        TCanvas * cScatAngle = new TCanvas("cScatAngle","Scattering Angle");
        cScatAngle -> Divide(2,2);
        
        cScatAngle -> cd(1);
        plot -> H2( "theta_g" , "Theta-theta_g" , "NeutronReachedDet" , "colz" , (22-9.5)*2 , 9.5 , 22 , 81 , -20 , 20  , "generated #theta [deg.]" , "scattering angle [deg.]"  , 1 , "scattering angle - positive and negative" );
        plot -> Line( 10.5 , -20 , 10.5 , 20 , 46 , 2 , 1 , 0.5 );
        plot -> Text( 9.6 , 0 , "10.5" , 46 );
        plot -> Text( 11 , -15 , "sector 1" , 38 );
        plot -> Line( 17.3 , -20 , 17.3 , 20 , 46 , 3 , 2 , 0.5 );
        plot -> Text( 18 , 15 , "sector 2" , 38 );
        plot -> Line( 20.5 , -20 , 20.5 , 20 , 46 , 2 , 1 , 0.5 );
        plot -> Text( 20.7 , 0 , "20.5" , 46 );
        gPad -> SetLogz();
        
        cScatAngle -> cd(2);
        TH1F* h_SA = plot -> H1( "Theta-theta_g" , "" , "" , 83 , -11000 , 40  );
        TH1F* h_ScaterringAngle = plot -> H1( "Theta-theta_g" , "NeutronReachedDet" , "" , 83 , -21 , 21  , "scattering angle [deg.]" , ""  , 1 );
        double Integral = h_SA->Integral();
        double Integral0 = h_ScaterringAngle->Integral(h_ScaterringAngle->FindBin(-0.5),h_ScaterringAngle->FindBin(0.5));
        double Integral10 = h_ScaterringAngle->Integral(h_ScaterringAngle->FindBin(0.5),h_ScaterringAngle->FindBin(10));
        double Integral10_ = h_ScaterringAngle->Integral(h_ScaterringAngle->FindBin(10),h_ScaterringAngle->GetNbinsX());
        
        printf("Full integral = %g , in (-0.5,0.5) = %g , in (1,10) = %g , in (10,->) = %g\n",Integral,100*(double)Integral0/Integral,100*(double)Integral10/Integral,100*(double)Integral10_/Integral);
        //    gPad -> SetLogy();
        
        cScatAngle -> cd(3);
        TH1F * hScatAngle_Sec1 = plot -> H1( "fabs(Theta-theta_g)" , cutSec1_g , "" , 43 , -1 , 21  , "|scattering angle| [deg.]" , ""  , 1 , "neutron flew towards Sector 1");
        //    gPad -> SetLogy();
        
        cScatAngle -> cd(4);
        TH1F * hScatAngle_Sec2 = plot -> H1( "fabs(Theta-theta_g)" , cutSec2_g , "" , 43 , -1 , 21  , "|scattering angle| [deg.]" , ""  , 1 , "neutron flew towards Sector 2");
        //    gPad -> SetLogy();
    }
    
    
    
    
    
    
    
    
    //....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
    if (DoAngle){
        TCanvas * cAngle = new TCanvas("cAngle","Angle");
        cAngle -> Divide (2,1);
        cAngle -> cd (1);
        double XMin = 10.;
        double XMax = 21.;
        int Nbins = (int)((XMax - XMin)*2.);
        TH1F * hThtea_g = plot -> H1( "theta_g" , "" , "" , Nbins , XMin , XMax  , "#theta [deg.]" , ""  , 1 , "#theta" );
        TH1F * hThtea = plot -> H1( "Theta" , "" , "same" , Nbins , XMin , XMax  , "#theta [deg.]" , ""  , 2 , "#theta" );
        //    TH1F * hThtea = plot -> H1( "Theta" , "NeutronReachedDet" , "same" , 73 , 0 , 30  , "#theta [deg.]" , "angle [deg.]"  , 2 , "#theta" );
        TH1F * h_Acceptance = new TH1F("h_Acceptance","Angular Acceptance" , Nbins , XMin , XMax );
        for ( int bin = 0 ; bin < Nbins ; bin++ ){
            if ( hThtea_g->GetBinContent(bin) > 0.1 )
                h_Acceptance -> SetBinContent ( bin , 100*(double)hThtea->GetBinContent(bin) / (double)hThtea_g->GetBinContent(bin) );
            else
                h_Acceptance -> SetBinContent ( bin , 0 );
        }
        h_Acceptance -> SetFillColor(38);
        plot -> SetFrame(h_Acceptance , Form("%s acceptance",Particle) , "#theta [deg.]" , "acceptance [%]" );
        cAngle -> cd (2);
        h_Acceptance -> Draw();
    }
    
}