IMLS 2022 PUBLIC LIBRARIES SURVEY DATA FILES -- PUBLIC-USE FILES INSTRUCTIONS

This file provides details about the FY 2022 PUBLIC LIBRARIES SURVEY public-use data files. 
Appendix A provides the SAS codes needed to recode negative values into missing. 


DESCRIPTION OF FILES
____________________

  The Public Libraries Survey data are composed of two files: 
	Public Library System Data File (Administrative Entity or AE),
  	and Public Library Outlet Data File. 
  

  1.	Public Library System Data File. This file, also known as the Administrative Entity or AE file, includes a total of 9,248 
	records. Each library’s data consist of one record. The file includes 10 records for administrative entities that were reported
	as temporarily closed for FY 2022 (STATSTRU, Structure Change Code, ‘23’). Records for public libraries that were temporarily 
	closed for the current year are included in the file for that year only. The temporarily closed records are not included in the 
	appendix tables of the data documentation.  Data for the temporarily closed records are set to a value of -3 with flag U_22 (not imputed).         


  2.	Public Library Outlet Data File includes a total of 17,546 total records. The file includes identifying information and a few 
	basic data items for public library service outlets (central, branch, bookmobile, and books-by-mail-only outlets). The data for 
	each outlet consists of one record, except where a single outlet represents multiple bookmobiles. For these outlets, a single record
	includes information for all bookmobiles and the variable L_NUM_BM indicates the number of associated bookmobiles.
	
	The file includes 96 records for outlets that were reported as temporarily closed for FY 2022 (STATSTRU, Structure 
	Change Code, ‘23’). Records for public libraries that were temporarily closed for the current year are included in the file
	for that year only. The temporarily closed records are not included in the appendix tables of the data documentation. Data for the temporarily 
	closed records are set to a value of -3 with flag U_22 (not imputed).  	


Public-Use Data Files and Programs
______________________________________

  In the public-use Public Library System Data File, selected expenditures data (i.e., Salaries, Employee Benefits, Total 
  Staff Expenditures, and Other Operating Expenditures) of public libraries have been removed (i.e., the field is set 
  to -9, with flag H_22) when the total FTE staff is less than or equal to 2.00, to protect confidentiality. 
  These data may also be suppressed for other libraries to ensure that all states that have suppressed data have a minimum of 
  three suppressed records. The library’s Total Operating Expenditures and Other Expenditures Data are not affected by the suppression 
  of these data. No data are suppressed in the public-use versions of the Public Library Outlet Data File.  
	
  Missing data are imputed on the public-use files. 

  For each file, both unimputed and imputed versions are provided, and available in three file types: CSV, SAS, and SPSS.

  For SAS users, data format programs are provided. For SPSS users, data formats are included in the data files. 

 
     Public Library System Data File
     --------------------------------

	Unimputed data Contains 9,248 records and 135 variables. Files include:

	PLS_FY22_AE_PUD22.csv - 2022 unimputed AE file in CSV format
     	PLS_FY22_AE_PUD22.sas7bdat - 2022 unimputed AE file in SAS format
   	PLS_FY22_AE_PUD22.sav - 2022 unimputed AE file in SPSS format

	SAS_pls_ae_pud22_FmtAssoc.sas - a SAS program to create value labels to the unimputed public-use SAS file
	SAS_pls_ae_pud22_FmtAttach.sas - a SAS program to assign value labels to the unimputed public-use SAS file


	Imputed data Contains 9,248 records and 192 variables. Files include:

	PLS_FY22_AE_pud22i.csv - 2022 imputed AE file in CSV format
     	PLS_FY22_AE_pud22i.sas7bdat - 2022 imputed AE file in SAS format
   	PLS_FY22_AE_pud22i.sav - 2022 imputed AE file in SPSS format

	SAS_pls_ae_pud22i_FmtAssoc.sas - a SAS program to create value labels to the imputed public-use SAS file
	SAS_pls_ae_pud22i_FmtAttach.sas - a SAS program to assign value labels to the imputed public-use SAS file


     Public Library Outlet Data File
     --------------------------------

	Unimputed data Contains 17,546 records and 36 variables. Files include:

	pls_fy22_outlet_pud22.csv - 2022 unimputed outlet file in CSV format
     	pls_fy22_outlet_pud22.sas7bdat - 2022 unimputed outlet file in SAS format
   	pls_fy22_outlet_pud22.sav - 2022 unimputed outlet file in SPSS format

	SAS_pls_outlet_pud22_FmtAssoc.sas - a SAS program to create value labels to the unimputed public-use SAS file
	SAS_pls_outlet_pud22_FmtAttach.sas - a SAS program to assign value labels to the unimputed public-use SAS file


	Imputed data Contains 17,546 records and 39 variables. Files include:

	pls_fy22_outlet_pud22i.csv - 2022 imputed outlet file in CSV format
     	pls_fy22_outlet_pud22i.sas7bdat - 2022 imputed outlet file in SAS format
   	pls_fy22_outlet_pud22i.sav - 2022 imputed outlet file in SPSS format

	SAS_pls_outlet_pud22i_FmtAssoc.sas - a SAS program to create value labels to the imputed public-use SAS file
	SAS_pls_outlet_pud22i_FmtAttach.sas - a SAS program to assign value labels to the imputed public-use SAS file




  Documentation and Related Files
  ________________________________

  The following documentation is provided with the files:

  	Documentation - Survey documentation for Fiscal Year 2022 Public Libraries Survey in PDF format


 
*********************************************************************************************************************************
Appendix A: The code below is for SAS users to recode negative values into missing in SAS.


Recoding Negative Values to Missing in SAS
___________________________________________

*------------------------------------------*
|    For Public Library System Data File   |
*------------------------------------------*
*Insert this section into data step;

array num _numeric_; 
do over num;
if num = -1 then num = .M; /*recode missing value into .M*/
if num = -3 and STATSTRU ='23' then num = .C; /*recode Temporary Closed Library into .C*/
if num = -4 then num = .N; /*recode "Not Applicable" into .N*/
if num = -9 then num = .S; /*recode suppressed value into .S*/
end;
array char _character_;
do over char;
if char ='M' then char = ' '; /*recode missing value into M for character variables*/
end;
/*recode the rest of special missing into corresponding missing values*/
if PHONE in ('-3','-4') then PHONE = ' '; 
if STARTDAT = '-3' then STARTDAT = '';
if ENDDATE = '-3' then ENDDATE = '';



*---------------------------------------*
|  For Public Library Outlet Data File  |
*---------------------------------------*
*Insert this section into data step;

array num _numeric_; 
do over num;
if num = -1 then num = .M; /*recode missing value into .M*/
if num = -3 and STATSTRU='23' then num = .C; /*recode Temporary Closed Library into .C*/
if num = -4 then num = .N; /*recode "Not Applicable" into .N*/
end;
array char _character_;
do over char;
if char ='M' then char = ' '; /*recode missing value into M for character variables*/
end;
/*recode the rest of special missing into corresponding missing values*/
if PHONE in ('-3','-4') then PHONE = ' ';