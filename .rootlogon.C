{
  if ( gSystem->Getenv("CMSSW_BASE") != 0 ) {
    // Provides access to methods in CMSSW framework
    // gSystem->Load("libFWCoreFWLite.so");
    // AutoLibraryLoader::enable();
    gROOT->ProcessLineSync("FWLiteEnabler::enable();");
    gSystem->Load("libDataFormatsFWLite.so");
  }

  // Load dotroot
  gROOT->ProcessLineSync(".x $HOME/.root/dotrootInit.C");

  // Loads user-defined default style
  dotrootImport("nsmith-/ROOTStyles");
  gROOT->SetStyle("tdrStyle");
}
