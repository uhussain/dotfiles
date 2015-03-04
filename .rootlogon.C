{
	gSystem->Load("libFWCoreFWLite.so");
	AutoLibraryLoader::enable();
	gSystem->Load("libDataFormatsFWLite.so");

  // This script gets called multiple times apparently??
  if ( strcmp(gStyle->GetName(),"tdrStyle") != 0 )
  {
    gROOT->ProcessLine(".L $HOME/.root_style.C");
    gROOT->SetStyle("tdrStyle");
  }
}
