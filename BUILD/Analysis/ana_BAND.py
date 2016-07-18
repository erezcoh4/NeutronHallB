import ROOT ,os, sys , math
from ROOT import TPlots , TAnalysis
from rootpy.interactive import wait
sys.path.insert(0, '/Users/erezcohen/larlite/UserDev/mySoftware/MySoftwarePackage/mac')
import Initiation as init
init.createnewdir()
ROOT.gStyle.SetOptStat(0000)


# -------------------------------------------------------- #
run         = int(sys.argv[1]) if len(sys.argv)>1 else 1
var         = sys.argv[2] if len(sys.argv)>2 else "MomentumResolution"
Particle    = "neutron"
comments    = "no electronic boxes" if (run==1) else "with electronic boxes"
Path        = "/Users/erezcohen/Desktop/NeutronHallB/G4_root_files"
FileName    = "BANDgeant4_run%d"%run
print "analyzing run %d"%run + ", var = " + var
# -------------------------------------------------------- #




# -------------------------------------------------------- #
plot = TPlots( Path + "/" + FileName + ".root" , "Ntuple" )
analysis = TAnalysis()

if (var == "ThetaAcceptance"):

    c = plot.CreateCanvas("theta","Divide",2,1)
    c.cd (1);
    XMin = 10
    XMax = 21
    Nbins = int((XMax - XMin)*2.)
    h_g = plot.H1( "theta_g",ROOT.TCut(),"hist",Nbins,XMin,XMax,"n polar angle","#theta [deg.]","",1,0)
    h = plot.H1( "Theta" , ROOT.TCut(),"hist same",Nbins,XMin,XMax,"","#theta [deg.]","",2,0)
    h_Acc = plot.H1( "Theta" , ROOT.TCut(),"goff",Nbins,XMin,XMax,"%s acceptance,%s"%(Particle,comments),"#theta [deg.]","acceptance [%]")
    for bin in range(0,Nbins):
        if ( h_g.GetBinContent(bin) > 0.1 ):
            h_Acc.SetBinContent ( bin , 100*(float(h.GetBinContent(bin))/ h_g.GetBinContent(bin) ))
        else:
            h_Acc.SetBinContent ( bin , 0 )
    c.cd(2)
    h_Acc.Draw("hist")


# -------------------------------------------------------- #



elif (var == "MomentumResolution"):
    ana_run1 = TPlots( Path + "/" + "BANDgeant4_run1.root" , "Ntuple" ,"run1" )
    ana_run2 = TPlots( Path + "/" + "BANDgeant4_run2.root" , "Ntuple" ,"run2")
    
    c = plot.CreateCanvas(var)
    #    plot.H1( "delta_p",ROOT.TCut("NeutronReachedDet"),"hist",100,-100,2,"(p(reconstructed) - p(generated))/p(generated) , %s"%comments,"#delta p / p [%]")
    #    plot.H2( "Momentum_g","p_reconstructed",ROOT.TCut("NeutronReachedDet"),"colz",100,0,500,100,0,500,"p(reconstructed) vs. p(generated), %s"%comments,"p(generated) [MeV/c]","p(reconstructed) [MeV/c]")
    h1=ana_run1.H1( "100*(p_reconstructed-Momentum_g)/Momentum_g",ROOT.TCut("NeutronReachedDet"),"goff",100,-20,5,"(p(reconstructed) - p(generated))/p(generated)","#delta p / p [%]","",1,0)
    h2=ana_run2.H1( "100*(p_reconstructed-Momentum_g)/Momentum_g",ROOT.TCut("NeutronReachedDet"),"goff",100,-20,5,"(p(reconstructed) - p(generated))/p(generated)","#delta p / p [%]","",4,0)
    analysis.NormalizeHistogram(h1)
    analysis.NormalizeHistogram(h2)
    h1.Draw("hist")
    h2.Draw("same hist")
    plot.AddLegend(h1,"No electronic boxes",h2,"With electronic boxes","l")

# -------------------------------------------------------- #



c.Update()
wait()
c.SaveAs(init.dirname()+"/BAND_run%d_"%run+var+".pdf")

