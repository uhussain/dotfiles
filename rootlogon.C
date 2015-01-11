{
	gSystem->Load("libFWCoreFWLite.so");
	AutoLibraryLoader::enable();
	gSystem->Load("libDataFormatsFWLite.so");
	gROOT->SetStyle ("Plain");
	gStyle->SetOptStat(111111);

  if ( gSystem->Exec("test -f ~/lib/librootools.so") == 0 )
  {
    gSystem->Load("librootools.so");
  }
}
