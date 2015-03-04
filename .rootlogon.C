{
	gSystem->Load("libFWCoreFWLite.so");
	AutoLibraryLoader::enable();
	gSystem->Load("libDataFormatsFWLite.so");
	gROOT->SetStyle("Plain");
	gStyle->SetOptStat(111111);
}
