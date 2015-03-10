{
  // Provides access to methods in CMSSW framework
	gSystem->Load("libFWCoreFWLite.so");
	AutoLibraryLoader::enable();
	gSystem->Load("libDataFormatsFWLite.so");

  // Loads user-defined default style
  gROOT->ProcessLineSync(".x $HOME/.root_style.C");
  gROOT->SetStyle("tdrStyle");

  // Load dotroot
  gROOT->ProcessLineSync(".x $HOME/.root/dotrootInit.C");
}
