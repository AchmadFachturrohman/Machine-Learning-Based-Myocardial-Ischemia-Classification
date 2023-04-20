unit ECG1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Buttons, math,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  myarray = array [-100..100000] of extended;
  array2dim = array[1..7,0..100000] of extended;
  arrayInt = array[-100..100000] of integer;
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    Chart1: TChart;
    Series1: TLineSeries;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Chart5: TChart;
    Series5: TBarSeries;
    SpeedButton5: TSpeedButton;
    TabSheet4: TTabSheet;
    Chart2: TChart;
    w3fplot: TLineSeries;
    SpeedButton7: TSpeedButton;
    Label11: TLabel;
    TabSheet5: TTabSheet;
    Chart6: TChart;
    w5fplot: TLineSeries;
    hasil5plot: TLineSeries;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    TabSheet6: TTabSheet;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Chart7: TChart;
    Q1: TLineSeries;
    Q2: TLineSeries;
    Q3: TLineSeries;
    Q4: TLineSeries;
    Q5: TLineSeries;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Chart8: TChart;
    Chart9: TChart;
    Chart10: TChart;
    w1fPlot: TLineSeries;
    ECG1Plot: TLineSeries;
    Hasil1Plot: TLineSeries;
    w2fPlot: TLineSeries;
    ECG2Plot: TLineSeries;
    Hasil2Plot: TLineSeries;
    w4fPlot: TLineSeries;
    ECG4Plot: TLineSeries;
    Hasil4Plot: TLineSeries;
    ECG3Plot: TLineSeries;
    ECG5Plot: TLineSeries;
    Grad1Plot: TLineSeries;
    Grad2Plot: TLineSeries;
    Grad3Plot: TLineSeries;
    Grad4Plot: TLineSeries;
    Grad5Plot: TLineSeries;
    ListBox6: TListBox;
    Peaks3Plot: TPointSeries;
    ListBox8: TListBox;
    ListBox9: TListBox;
    ListBox10: TListBox;
    GroupBox2: TGroupBox;
    TabSheet10: TTabSheet;
    Chart4: TChart;
    Series2: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    SaveDialog1: TSaveDialog;
    Label9: TLabel;
    Label10: TLabel;
    ListBox12: TListBox;
    Label5: TLabel;
    Label29: TLabel;
    Hasil3Plot: TLineSeries;
    Peaks1Plot: TPointSeries;
    Peaks2Plot: TPointSeries;
    Peaks4Plot: TPointSeries;
    Peaks5Plot: TPointSeries;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    ListBox13: TListBox;
    ListBox14: TListBox;
    ListBox15: TListBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    Edit1: TEdit;
    Label6: TLabel;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    procedure Buka_file;
    procedure cari_file(in1 :integer);
    procedure simpan_data(in1 :myArray);
    procedure filter_bank;
    procedure thresholding;
    procedure hitung_bpm(In1 :myArray);
    function G(x :integer):extended;
    function H(x :integer):extended;
    procedure respon_frek;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jmldata :integer;
  w, fs, t, bpm :extended;
  x, x_norm :myarray;
  dft_re, dft_im, dft1 :myarray;
  h_conv1, h_conv2, h_conv3, h_conv4, h_conv5 :myArray;
  qj, Q :array2dim;

  sigma :array2dim;
  T1, T2, T3, T4, T5 :integer;
  delay1, delay2, delay3, delay4, delay5 :integer;
  grad1, grad2, grad3, grad4, grad5 :myArray;
  hasil1, hasil2, hasil3, hasil4, hasil5, hasil52, hasil53 :myArray;
  th1, th2 :extended;
  peak1, peak2, peak3, peak4, peak5 :myArray;

  lp, lnn, thr, bpm1, bpm2, bpm3 :myArray;
  timer :arrayInt;
  myfile :textfile;
  mydata :file;
  Form1: TForm1;


implementation

{$R *.dfm}
procedure TForm1.cari_file(in1 :integer);
var
  i: integer;
begin
  reset(myfile);
  for i := -(round(power(2,in1)) + round(power(2,in1-1)-2)) to -(1-round(power(2,in1-1))) do
  begin
    read(myfile,qj[in1,i]);
    if in1=1 then
    begin
      Listbox1.Items.Add(floattostr(qj[1,i]));
      label18.Caption := inttostr(i);
    end else
    if in1=2 then
    begin
      Listbox2.Items.Add(floattostr(qj[2,i]));
      label19.Caption := inttostr(i);
    end else
    if in1=3 then
    begin
      Listbox3.Items.Add(floattostr(qj[3,i]));
      label20.Caption := inttostr(i);
    end else
    if in1=4 then
    begin
      Listbox4.Items.Add(floattostr(qj[4,i]));
      label21.Caption := inttostr(i);
    end
    else
    begin
      Listbox5.Items.Add(floattostr(qj[5,i]));
      label22.Caption := inttostr(i);
    end;
  end;
  closefile(myfile);
end;

procedure TForm1.filter_bank;
var
  i,j,k : integer;
begin
  T1 := 0;  //(2^(1-1))-1
  T2 := 1;  //(2^(2-1))-1
  T3 := 3;  //(2^(3-1))-1
  T4 := 7;  //(2^(4-1))-1
  T5 := 15; //(2^(5-1))-1

  delay1 := T5 - T1;
  delay2 := T5 - T2;
  delay3 := T5 - T3;
  delay4 := T5 - T4;
  delay5 := T5 - T5;

  for i := 0 to jmldata-1 do
  begin
    for j := 1 to 5 do
    begin
      sigma[1,i+T1] := 0;
      sigma[2,i+T2] := 0;
      sigma[3,i+T3] := 0;
      sigma[4,i+T4] := 0;
      sigma[5,i+T5] := 0;
      for k := -(round(power(2,j)) + round(power(2,j-1)-2)) to -(1-round(power(2,j-1))) do
      begin
        sigma[1,i+T1] := sigma[1,i+T1] + qj[1,k]*x[i-k];
        sigma[2,i+T2] := sigma[2,i+T2] + qj[2,k]*x[i-k];
        sigma[3,i+T3] := sigma[3,i+T3] + qj[3,k]*x[i-k];
        sigma[4,i+T4] := sigma[4,i+T4] + qj[4,k]*x[i-k];
        sigma[5,i+T5] := sigma[5,i+T5] + qj[5,k]*x[i-k];
      end;
    end;
  end;

  for i := 0 to 999+T5 do //compare
  begin
    Series2.AddXY((i-T5)/fs,25+x[i]);
    Series6.AddXY((i-T5)/fs,20+sigma[1,i]);
    Series7.AddXY((i-T5)/fs,15+sigma[2,i]);
    Series9.AddXY((i-T5)/fs,10+sigma[3,i]);
    Series10.AddXY((i-T5)/fs,5+sigma[4,i]);
    Series11.AddXY((i-T5)/fs,sigma[5,i]);
  end;

  for i := 0 to 999 do
  begin
    w1fplot.AddXY(i,sigma[1,i]);
    w2fplot.AddXY(i,sigma[2,i]);
    w3fplot.AddXY(i,sigma[3,i]);
    w4fplot.AddXY(i,sigma[4,i]);
    w5fplot.AddXY(i,sigma[5,i]);
  end;

  for i := 0 to jmldata-1 do
  begin
    h_conv1[i] := (sigma[1,i]);
    h_conv2[i] := (sigma[2,i]);
    h_conv3[i] := (sigma[3,i]);
    h_conv4[i] := (sigma[4,i]);
    h_conv5[i] := (sigma[5,i]);
  end;
end;

procedure TForm1.thresholding;
var
  i: Integer;
begin
  for i := T1+1 to jmldata-1 do
  begin
    grad1[i] := h_conv1[i-1] - h_conv1[i+1];
  end;

  for i := T2+1 to jmldata-1 do
  begin
    grad2[i] := h_conv2[i-2] - h_conv2[i+2];
  end;

  for i := T3 to jmldata-1 do
  begin
    grad3[i] := h_conv3[i-3] - h_conv3[i+3];
  end;

  for i := T4 to jmldata-1 do
  begin
    grad4[i] := h_conv4[i-4] - h_conv4[i+4];
  end;

  for i := T5 to jmldata-1 do
  begin
    grad5[i] := h_conv5[i-5] - h_conv5[i+5];
  end;

  for i := 0 to 999 do
  begin
    Grad1Plot.AddXY(i,grad1[i]);
    Grad2Plot.AddXY(i,grad2[i]);
    Grad3Plot.AddXY(i,grad3[i]);
    Grad4Plot.AddXY(i,grad4[i]);
    Grad5Plot.AddXY(i,grad5[i]);
    memo3.Lines.Add(inttostr(i) + ', ' + floattostrf(grad5[i],ffnumber,3,3));
  end;

  if RadioButton1.Checked = True then
  begin
    th1 := 0.15;

    for i := T1 to 999 do
    begin
      Listbox8.Items.Add(inttostr(i) + ', ' + floattostr(h_conv1[i]));
      if grad1[i] > th1 then //skala 1
      begin
        hasil1[i] := 1;
        if ((grad1[i-1] < grad1[i]) and (grad1[i] > grad1[i+1])) then
        begin
          peak1[i] := x[i];
          ListBox15.Items.Add(inttostr(i) + ',' + floattostrf(peak1[i],ffnumber,3,3));
          Peaks1Plot.AddXY(i,peak1[i]);
        end;
      end else
      begin
        hasil1[i] := 0;
      end;
      Hasil1Plot.AddXY(i,hasil1[i]);
    end;

    for i := T2 to 999 do
    begin
      Listbox9.Items.Add(inttostr(i) + ', ' + floattostr(h_conv2[i]));
      if grad2[i] > th1 then   //skala 2
      begin
        hasil2[i] := 1;
        if ((grad2[i-1] < grad2[i]) and (grad2[i] > grad2[i+1])) then
        begin
          peak2[i] := x[i];
          ListBox14.Items.Add(inttostr(i) + ',' + floattostrf(peak2[i],ffnumber,3,3));
          Peaks2Plot.AddXY(i,peak2[i]);
        end;
      end else
      begin
        hasil2[i] := 0;
      end;
      Hasil2Plot.AddXY(i,hasil2[i]);
    end;

    for i := T3 to 999 do
    begin
      Listbox10.Items.Add(inttostr(i) + ', ' + floattostr(h_conv3[i]));
      if grad3[i] > th1  then //skala 3
      begin
        hasil3[i] := 1;
        if ((grad3[i-1] < grad3[i]) and (grad3[i] > grad3[i+1])) then  //puncak P,R,T
        begin
          peak3[i] := x[i];
          ListBox13.Items.Add(inttostr(i) + ',' + floattostrf(peak3[i],ffnumber,3,3));
          Peaks3Plot.AddXY(i,peak3[i]);
        end else
        if (h_conv3[i-1] < h_conv3[i]) and (h_conv3[i] > h_conv3[i+1]) then     //puncak Q
        begin
          peak3[i] := x[i];
          ListBox13.Items.Add(inttostr(i) + ',' + floattostrf(peak3[i],ffnumber,3,3));
          Peaks3Plot.AddXY(i,peak3[i]);
        end else
        if (h_conv3[i-1] > h_conv3[i]) and (h_conv3[i] < h_conv3[i+1]) then     //puncak S
        begin
          peak3[i] := x[i];
          ListBox13.Items.Add(inttostr(i) + ',' + floattostrf(peak3[i],ffnumber,3,3));
          Peaks3Plot.AddXY(i,peak3[i]);
        end;
      end else
      begin
        hasil3[i] := 0;
      end;
      Hasil3Plot.AddXY(i,hasil3[i]);
    end;

    for i := T4 to 999 do    //skala 4
    begin
      Listbox6.Items.Add(inttostr(i) + ', ' + floattostr(h_conv4[i]));
      if grad4[i] >= th1 then
      begin
        hasil4[i] := 1;
        if ((grad4[i-1] < grad4[i]) and (grad4[i] > grad4[i+1])) then
        begin
          peak4[i] := x[i];
          ListBox12.Items.Add(inttostr(i) + ',' + floattostrf(peak4[i],ffnumber,3,3));
          Peaks4Plot.AddXY(i,peak4[i]);
        end else
        if (h_conv4[i-1] < h_conv4[i]) and (h_conv4[i] > h_conv4[i+1]) then     //puncak Q
        begin
          peak4[i] := x[i];
          ListBox12.Items.Add(inttostr(i) + ',' + floattostrf(peak4[i],ffnumber,3,3));
          Peaks4Plot.AddXY(i,peak4[i]);
        end else
        if (h_conv4[i-1] > h_conv4[i]) and (h_conv4[i] < h_conv4[i+1]) then     //puncak S
        begin
          peak4[i] := x[i];
          ListBox12.Items.Add(inttostr(i) + ',' + floattostrf(peak4[i],ffnumber,3,3));
          Peaks4Plot.AddXY(i,peak4[i]);
        end;
      end else
      begin
        hasil4[i] := 0;
      end;
      Hasil4Plot.AddXY(i,hasil4[i]);
    end;

    for i := T5 to 999 do //skala 5
    begin
      memo2.Lines.Add(inttostr(i) + ', ' + floattostrf(h_conv5[i],ffnumber,3,3));
      if grad5[i] >= 0.4 then  //lebar P,QRS,T
      begin
        hasil5[i] := 1;
        if ((h_conv5[i] >= -0.1) and (h_conv5[i+1] <= -0.1)) then  //puncak P,R,T
        begin
          peak5[i] := x[i];
          memo5.Lines.Add(inttostr(i) + ', ' + floattostrf(peak5[i],ffnumber,3,3));
          Peaks5Plot.AddXY(i,peak5[i]);
        end else
        if (grad5[i] <= 1.5) and (grad5[i+1] >= 1.5) then //puncak Q
        begin
          peak5[i] := x[i];
          memo5.Lines.Add(inttostr(i) + ', ' + floattostrf(peak5[i],ffnumber,3,3));
          Peaks5Plot.AddXY(i,peak5[i]);
        end else
        if (h_conv5[i] >= -3.1) and (h_conv5[i+1] <= -3.1) then   //puncak S
        begin
          peak5[i] := x[i];
          memo5.Lines.Add(inttostr(i) + ', ' + floattostrf(peak5[i],ffnumber,3,3));
          Peaks5Plot.AddXY(i,peak5[i]);
        end;
      end else
      begin
        hasil5[i] := 0;
      end;

      if grad5[i] >= 2.7 then
      begin
        hasil53[i] := 1;
      end else
      begin
        hasil53[i] := 0;
      end;
      Hasil5Plot.AddXY(i,hasil5[i]);
      memo4.Lines.Add(inttostr(i) + ', ' + floattostrf(hasil5[i],ffnumber,3,3));
    end;
  end;

  if RadioButton2.Checked = True then
  begin
    th1 := 0.3; //Cari lebar suatu gelombang

    for i := T1 to 999 do
    begin
      Listbox8.Items.Add(inttostr(i) + ', ' + floattostr(h_conv1[i]));
      if grad1[i] > th1 then //skala 1
      begin
        hasil1[i] := 1;
        if ((grad1[i-1] < grad1[i]) and (grad1[i] > grad1[i+1])) then
        begin
          peak1[i] := x_norm[i];
          ListBox15.Items.Add(inttostr(i) + ',' + floattostrf(peak1[i],ffnumber,3,3));
          Peaks1Plot.AddXY(i,peak1[i]);
        end;
      end else
      begin
        hasil1[i] := 0.5;
      end;
      Hasil1Plot.AddXY(i,hasil1[i]);
    end;

    for i := T2 to 999 do
    begin
      Listbox9.Items.Add(inttostr(i) + ', ' + floattostr(h_conv2[i]));
      if grad2[i] > th1 then   //skala 2
      begin
        hasil2[i] := 1;
        if ((grad2[i-1] < grad2[i]) and (grad2[i] > grad2[i+1])) then
        begin
          peak2[i] := x_norm[i];
          ListBox14.Items.Add(inttostr(i) + ',' + floattostrf(peak2[i],ffnumber,3,3));
          Peaks2Plot.AddXY(i,peak2[i]);
        end;
      end else
      begin
        hasil2[i] := 0.5;
      end;
      Hasil2Plot.AddXY(i,hasil2[i]);
    end;

    for i := T3 to 999 do
    begin
      Listbox10.Items.Add(inttostr(i) + ', ' + floattostr(h_conv3[i]));
      if grad3[i] > th1  then //skala 3
      begin
        hasil3[i] := 1;
        if ((grad3[i-1] < grad3[i]) and (grad3[i] > grad3[i+1])) then
        begin
          peak3[i] := x_norm[i];
          ListBox13.Items.Add(inttostr(i) + ',' + floattostrf(peak3[i],ffnumber,3,3));
          Peaks3Plot.AddXY(i,peak3[i]);
        end;
      end else
      begin
        hasil3[i] := 0.5;
      end;
      Hasil3Plot.AddXY(i,hasil3[i]);
    end;

    for i := T4 to 999 do
    begin
      Listbox6.Items.Add(inttostr(i) + ', ' + floattostr(h_conv4[i]));
      if grad4[i] > th1 then      //skala 4
      begin
        hasil4[i] := 1;
        if ((grad4[i-1] < grad4[i]) and (grad4[i] > grad4[i+1])) then
        begin
          peak4[i] := x_norm[i];
          ListBox12.Items.Add(inttostr(i) + ',' + floattostrf(peak4[i],ffnumber,3,3));
          Peaks4Plot.AddXY(i,peak4[i]);
        end else
        if (h_conv4[i] >= 0.8) and (h_conv4[i+1] <= 0.8) then //puncak Q
        begin
          peak4[i] := x_norm[i];
          ListBox12.Items.Add(inttostr(i) + ',' + floattostrf(peak4[i],ffnumber,3,3));
          Peaks4Plot.AddXY(i,peak4[i]);
        end else
        if (h_conv4[i] >= -0.6) and (h_conv4[i+1] <= -0.6) then //puncak S
        begin
          peak4[i] := x_norm[i];
          ListBox12.Items.Add(inttostr(i) + ',' + floattostrf(peak4[i],ffnumber,3,3));
          Peaks4Plot.AddXY(i,peak4[i]);
        end;
      end else
      begin
        hasil4[i] := 0.5;
      end;
      Hasil4Plot.AddXY(i,hasil4[i]);
    end;

    for i := T5 to 999 do
    begin
      memo2.Lines.Add(inttostr(i) + ', ' + floattostrf(h_conv5[i],ffnumber,3,3));  //skala 5
      if grad5[i] >= th1 then  //lebar P,QRS,T
      begin
        hasil5[i] := 1;
        if ((grad5[i-1] < grad5[i]) and (grad5[i] > grad5[i+1]))  then //puncak P,R,T
        begin
          peak5[i] := x_norm[i];
          memo5.Lines.Add(inttostr(i) + ', ' + floattostrf(peak5[i],ffnumber,3,3));
          Peaks5Plot.AddXY(i,peak5[i]);
        end else
        if (grad5[i] <= 1.2) and (grad5[i+1] >= 1.2) then //puncak Q
        begin
          peak5[i] := x_norm[i];
          memo5.Lines.Add(inttostr(i) + ', ' + floattostrf(peak5[i],ffnumber,3,3));
          Peaks5Plot.AddXY(i,peak5[i]);
        end else
        if (grad5[i] >= 1.1) and (grad5[i+1] <= 1.1) then //puncak S
        begin
          peak5[i] := x_norm[i];
          memo5.Lines.Add(inttostr(i) + ', ' + floattostrf(peak5[i],ffnumber,3,3));
          Peaks5Plot.AddXY(i,peak5[i]);
        end;
      end else
      begin
        hasil5[i] := 0.5;
      end;

      th2 := 1.85; //cari HR
      if grad5[i] >= th2 then //HR
      begin
        hasil52[i] := 1;
      end else
      begin
        hasil52[i] := 0.5;
      end;
      Hasil5Plot.AddXY(i,hasil5[i]);
      memo4.Lines.Add(inttostr(i) + ', ' + floattostrf(hasil5[i],ffnumber,3,3));
    end;
  end;
end;

procedure TForm1.hitung_bpm(In1 :myArray);
var
  //pp, nn, pulse :integer;
  i,j,p: integer;
begin
  {pp := 0; pulse := 0;

  while pp<=999 do
  begin
    nn := 0;
    if (In1[pp]=0) and (In1[pp+1]=1) then
    begin
      for i := pp+1 to pp+30 do
      begin
        if (In1[i]=0) and (In1[i+1] = 1) then
        begin
          nn := nn + 1;
        end;
      end;

      if nn = 0 then
      begin
        pulse := pulse + 1;
        pp := pp + 1;
      end;
    end;
    pp := pp + 1;
  end;
  bpm := pulse*60*fs/999;}

  p := 1;
  for i := 0 to 999 do
  begin
    bpm1[i] := 0;
    bpm2[i] := 0;
    bpm3[i] := 0;
  end;
  for i := 0 to 999 do
  begin
    if ((In1[i] = 0.5) and (In1[i+1] = 1)) then
    begin
      bpm1[p] := i+1;
      timer[p] := i;
      for j := i+1 to 998 do
      begin
        if ((In1[j] = 0.5) and (In1[j+1] = 1)) then
        begin
          bpm2[p] := j;
          inc(p);
        end;
      end;
    end;
  end;

  for i := 1 to p-1 do
  begin
    bpm3[i] := 60/((bpm2[i]-bpm1[i])/fs);
    bpm3[i] := roundto(bpm3[i],-3);
    Label11.Caption := 'BPM = ' + floattostr(bpm3[i]);
  end;
end;

function TForm1.G(x: Integer):extended;
begin
  result := sqrt(sqr(4*cos(x*w/2)*sin(x*w/2))+sqr(4*sin(x*w/2)*sin(x*w/2)));
end;

function TForm1.H(x: Integer):extended;
begin
  result := sqrt(sqr(power(cos(x*w/2),3)*cos(x*w/2))+sqr(power(cos(x*w/2),3)*sin(x*w/2)));
end;

procedure TForm1.respon_frek;
var
  i: Integer;
begin
  for i := 0 to round(fs/2) do
  begin
    w := 2*pi*i/fs;
    Q[1,i] := G(1);
    Q[2,i] := G(2) *H(1);
    Q[3,i] := G(4) *H(2)*H(1);
    Q[4,i] := G(8) *H(4)*H(2)*H(1);
    Q[5,i] := G(16)*H(8)*H(4)*H(2)*H(1);

    Q1.AddXY(i,Q[1,i]);
    Q2.AddXY(i,Q[2,i]);
    Q3.AddXY(i,Q[3,i]);
    Q4.AddXY(i,Q[4,i]);
    Q5.AddXY(i,Q[5,i]);
  end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  TabSheet10.Show;
  Series2.Clear; Series7.Clear; Series9.Clear; Series10.Clear; Series11.Clear;
  w1fplot.Clear; w2fplot.Clear; w3fplot.Clear; w4fplot.Clear; w5fplot.Clear;
  Q1.Clear; Q2.Clear; Q3.Clear; Q4.Clear; Q5.Clear;
  Hasil1Plot.Clear; Hasil2Plot.Clear; Hasil3Plot.Clear; Hasil4Plot.Clear; Hasil5Plot.Clear; //Hasil52Plot.Clear;
  Grad1Plot.Clear; Grad2Plot.Clear; Grad3Plot.Clear; Grad4Plot.Clear; Grad5Plot.Clear;
  Peaks1Plot.Clear; Peaks2Plot.Clear; Peaks3Plot.Clear; Peaks4Plot.Clear; Peaks5Plot.Clear;
  Listbox1.Clear; Listbox2.Clear; Listbox3.Clear; Listbox4.Clear; Listbox5.Clear;
  Listbox6.Clear; memo5.Clear; Listbox8.Clear; Listbox9.Clear; Listbox10.Clear;
  memo2.Clear; memo3.Clear; memo4.Clear; Listbox12.Clear; Listbox13.Clear; Listbox14.Clear; Listbox15.Clear;

  if FileExists('koefisien filter_1.txt') = false then
  begin
    ShowMessage('File Not Found !');
  end;
  assignfile(myfile,'koefisien filter_1.txt');
  cari_file(1);

  if FileExists('koefisien filter_2.txt') = false then
  begin
    ShowMessage('File Not Found !');
  end;
  assignfile(myfile,'koefisien filter_2.txt');
  cari_file(2);

  if FileExists('koefisien filter_3.txt') = false then
  begin
    ShowMessage('File Not Found !');
  end;
  assignfile(myfile,'koefisien filter_3.txt');
  cari_file(3);

  if FileExists('koefisien filter_4.txt') = false then
  begin
    ShowMessage('File Not Found !');
  end;
  assignfile(myfile,'koefisien filter_4.txt');
  cari_file(4);

  if FileExists('koefisien filter_5.txt') = false then
  begin
    ShowMessage('File Not Found !');
  end;
  assignfile(myfile,'koefisien filter_5.txt');
  cari_file(5);

  respon_frek;
  filter_bank;
  thresholding;
  if RadioButton1.Checked = True then
  begin
    hitung_bpm(hasil53);
  end else
  if RadioButton2.Checked = True then
  begin
    hitung_bpm(hasil52);
  end;
end;

procedure TForm1.Buka_file;
var
  del1, del2, val, ecg :string;
  ambil :tstringlist;
  dataecg :textfile;
  i: integer;
begin
  i := 0;
  ambil := tstringlist.Create;

  if OpenDialog1.Execute = True then
  begin
    assignfile(dataecg,OpenDialog1.FileName);
    reset(dataecg);

    if RadioButton1.Checked = True then
    begin
      readln(dataecg,del1);
      ambil.Delimiter := '(';
      readln(dataecg,del2);
      ambil.DelimitedText := del2;
      //t := strtofloat (ambil[1]);
      t := 0.004;
      fs := 1/t;
      fs := roundto(fs,0);

      while not EOF (dataecg) do
      begin
        readln(dataecg,val);
        ambil.Delimiter := ' ';
        ambil.DelimitedText := val;
        ecg := ambil[1];
        x[i] := strtofloat(ecg);
        inc(i);
      end;
      closefile(dataecg);
      jmldata := i;
    end;

    if RadioButton2.Checked = True then
    begin
      t  := 0.004;
      fs := 1/t;
      while not EOF (dataecg) do
      begin
        readln(dataecg,val);
        ambil.Delimiter := ',';
        ambil.DelimitedText := val;
        ecg := ambil[0];
        x[i] := strtofloat(ecg);
        inc(i);
      end;
      closefile(dataecg);
      jmldata := i;
    end;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  i :integer;
  temp :extended;
begin
  Buka_file;
  TabSheet1.Show;
  Series1.Clear; Series2.Clear;
  ECG1Plot.Clear; ECG2Plot.Clear; ECG3Plot.Clear; ECG4Plot.Clear; ECG5Plot.Clear;
  label3.Caption := inttostr(jmldata);
  label4.Caption := floattostr(fs);

  temp := 0;
  for i := 0 to 999 do
  begin
    if x[i] > temp then
    begin
      temp := x[i];
    end;
  end;

  if RadioButton1.Checked = True then
  begin
    for i := 0 to 999 do
    begin
      Series2.AddXY(i/fs,x[i]);
      Series1.AddXY(i,x[i]);
      ECG1Plot.AddXY(i,x[i]);
      ECG2Plot.AddXY(i,x[i]);
      ECG3Plot.AddXY(i,x[i]);
      ECG4Plot.AddXY(i,x[i]);
      ECG5Plot.AddXY(i,x[i]);
      memo1.Lines.Add(inttostr(i) + ', ' + floattostrf(x[i],ffnumber,3,3));
    end;
  end else
  if RadioButton2.Checked = True then
  begin
    for i := 0 to 999 do
    begin
      x_norm[i] := x[i]/temp;
      Series2.AddXY(i/fs,x_norm[i]);
      Series1.AddXY(i,x_norm[i]);
      ECG1Plot.AddXY(i,x_norm[i]);
      ECG2Plot.AddXY(i,x_norm[i]);
      ECG3Plot.AddXY(i,x_norm[i]);
      ECG4Plot.AddXY(i,x_norm[i]);
      ECG5Plot.AddXY(i,x_norm[i]);
      memo1.Lines.Add(inttostr(i) + ', ' + floattostrf(x_norm[i],ffnumber,3,3));
    end;
  end;
end;

procedure TForm1.simpan_data(in1 :myArray);
var
  i,j :integer;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    j := 1;
    rewrite(myfile);
    for i := 0 to jmldata-1 do
    begin
      write(myfile,in1[i],'r');
      if (j = 249) then
      begin
        writeln(myfile,in1[i]);
        j :=0;
      end;
      inc(j);
    end;
  end;

  if RadioGroup1.ItemIndex = 1 then
  begin
    j := 1;
    rewrite(myfile);
    for i := 0 to jmldata-1 do
    begin
      write(myfile,in1[i],'r');
      if (j = 249) then
      begin
        writeln(myfile,in1[i]);
        j := 0;
      end;
      inc(j);
    end;
  end;
  closefile(myfile);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then   //dekomposisi
  begin
    if RadioGroup2.ItemIndex = 0 then
    begin
      assignfile(myfile, 'h_conv1_' + Edit1.Text + '.txt');
      simpan_data(h_conv1);
    end else
    if RadioGroup2.ItemIndex = 1 then
    begin
      assignfile(myfile, 'h_conv2_' + Edit1.Text + '.txt');
      simpan_data(h_conv2);
    end else
    if RadioGroup2.ItemIndex = 2 then
    begin
      assignfile(myfile, 'h_conv3_' + Edit1.Text + '.txt');
      simpan_data(h_conv3);
    end else
    if RadioGroup2.ItemIndex = 3 then
    begin
      assignfile(myfile, 'h_conv4_' + Edit1.Text + '.txt');
      simpan_data(h_conv4);
    end else
    if RadioGroup2.ItemIndex = 4 then
    begin
      assignfile(myfile, 'h_conv5_' + Edit1.Text + '.txt');
      simpan_data(h_conv5);
    end;
  end else
  if RadioGroup1.ItemIndex = 1 then //puncak
  begin
    if RadioGroup2.ItemIndex = 0 then
    begin
      assignfile(myfile, 'puncak1_' + Edit1.Text + '.txt');
      simpan_data(peak1);
    end else
    if RadioGroup2.ItemIndex = 1 then
    begin
      assignfile(myfile, 'puncak2_' + Edit1.Text + '.txt');
      simpan_data(peak2);
    end else
    if RadioGroup2.ItemIndex = 2 then
    begin
      assignfile(myfile, 'puncak3_' + Edit1.Text + '.txt');
      simpan_data(peak3);
    end else
    if RadioGroup2.ItemIndex = 3 then
    begin
      assignfile(myfile, 'puncak4_' + Edit1.Text + '.txt');
      simpan_data(peak4);
    end else
    if RadioGroup2.ItemIndex = 4 then
    begin
      assignfile(myfile, 'puncak5_' + Edit1.Text + '.txt');
      simpan_data(peak5);
    end;
  end;
  ShowMessage('File Berhasil Dibuat!!');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  Series1.Clear; Series2.Clear; memo1.Clear; memo3.Clear; memo4.Clear;
  ECG1Plot.Clear; ECG2Plot.Clear; ECG3Plot.Clear; ECG4Plot.Clear; ECG5Plot.Clear;

  Series5.Clear;

  Series6.Clear; Series7.Clear; Series9.Clear; Series10.Clear; Series11.Clear;
  w1fplot.Clear; w2fplot.Clear; w3fplot.Clear; w4fplot.Clear; w5fplot.Clear;
  Q1.Clear; Q2.Clear; Q3.Clear; Q4.Clear; Q5.Clear;
  Hasil1Plot.Clear; Hasil2Plot.Clear; Hasil3Plot.Clear; Hasil4Plot.Clear; Hasil5Plot.Clear; //Hasil52Plot.Clear;
  Grad1Plot.Clear; Grad2Plot.Clear; Grad3Plot.Clear; Grad4Plot.Clear; Grad5Plot.Clear;
  Peaks1Plot.Clear; Peaks2Plot.Clear; Peaks3Plot.Clear; Peaks4Plot.Clear; Peaks5Plot.Clear;
  Listbox1.Clear; Listbox2.Clear; Listbox3.Clear; Listbox4.Clear; Listbox5.Clear;
  Listbox6.Clear; memo5.Clear; Listbox8.Clear; Listbox9.Clear; Listbox10.Clear;
  memo2.Clear; Listbox12.Clear; Listbox13.Clear; Listbox14.Clear; Listbox15.Clear;
  Label11.Caption := ' ';

  for i := 0 to jmldata-1 do
  begin
    h_conv1[i] := 0; h_conv2[i] := 0; h_conv3[i] := 0; h_conv4[i] := 0; h_conv5[i] := 0;
    grad1[i] := 0; grad2[i] := 0; grad3[i] := 0; grad4[i] := 0; grad5[i] := 0;
    peak1[i] := 0; peak2[i] := 0; peak3[i] := 0; peak4[i] := 0; peak5[i] := 0;
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
  i,j: integer;
begin
  TabSheet3.Show;
  Series5.Clear;

  for i := 0 to jmldata - 1 do
  begin
    dft_re[i] := 0;
    dft_im[i] := 0;
    for j := 0 to jmldata - 1 do
    begin
      dft_re[i] := dft_re[i] + x[j]*cos(2*pi*i*j/jmldata);
      dft_im[i] := dft_im[i] + x[j]*sin(2*pi*i*j/jmldata);
    end;
    dft1[i] := sqrt(sqr(dft_re[i]) + sqr(dft_im[i]))/jmldata;
  end;

  for i := 0 to round(jmldata/2)-1 do
  begin
    Series5.AddXY(i*fs/jmldata,dft1[i]);
  end;
end;

end.
