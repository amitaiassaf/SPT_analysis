dt = 0.08;
px2mu = 0.091;
dr = [px2mu px2mu px2mu];
dim = 3;
cmflag=1;

%%%% Load data and analyze
filename = 'TrajData_3d_cm.xls';
DataNuc = importfile_excel(filename,'dt',dt,'dr',dr,'cmflag',cmflag,'dim',dim);

%%%% Plot parameters histograms
PlotHitograms(DataNuc);

%%%% Output analysis result
outname = ['analysis_result.txt'];
AnalysisExport(outname,DataNuc)
