# Результат:
# http://localhost:4567/

# coding: utf-8

require 'sinatra'

get '/' do 
	erb :glav
end

post '/' do 
	@sub_doc=params[:sub_doc]
	@doc_post_pro=params[:doc_post_pro]
	@nomer_doc=params[:nomer_doc]
	@st_koap=params[:st_koap]
	@god=params[:god]
	@dlin=@nomer_doc.size
	@uin="10636002000000000000"
	
	if @st_koap=="6.24"
		@uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
	end
    if @st_koap=="6.25"
		@uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="8.22"
		@uin[5]="3"
		@uin[6]="5"
		@kbk="106 1 16 25050 01 6000 140"
    end
    if @st_koap=="8.23"
		@uin[5]="3"
		@uin[6]="5"
		@kbk="106 1 16 25050 01 6000 140"
    end
    if @st_koap=="11.14.2"
		@uin[5]="4"
		@uin[6]="0"
		@kbk="106 1 16 30020 01 6000 140"
    end
    if @st_koap=="11.22"
		@uin[5]="3"
		@uin[6]="2"
		@kbk="106 1 16 90010 01 6000 140"
    end
    if @st_koap=="11.23"
		@uin[5]="3"
		@uin[6]="2"
		@kbk="106 1 16 90010 01 6000 140"
    end
    if @st_koap=="11.29"
		@uin[5]="2"
		@uin[6]="8"
		@kbk="106 1 16 29000 01 6000 140"
    end
    if @st_koap=="11.31"
		@uin[5]="3"
		@uin[6]="3"
		@kbk="106 1 16 48000 01 6000 140"
    end
    if @st_koap=="11.33"
		@uin[5]="4"
		@uin[6]="0"
		@kbk="106 1 16 30020 01 6000 140"
    end
    if @st_koap=="12.21.1"
		@uin[5]="2"
		@uin[6]="9"
		@kbk="106 1 16 30011 01 6000 140"
    end
    if @st_koap=="12.21.2"
		@uin[5]="2"
		@uin[6]="8"
		@kbk="106 1 16 29000 01 6000 140"
    end
    if @st_koap=="12.23"
		@uin[5]="4"
		@uin[6]="0"
		@kbk="106 1 16 30020 01 6000 140"
    end
    if @st_koap=="12.31.1"
		@uin[5]="4"
		@uin[6]="0"
		@kbk="106 1 16 30020 01 6000 140"
    end
    if @st_koap=="14.1"
	    @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="14.1.2"
		@uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="14.43"
		@uin[5]="2"
		@uin[6]="3"
		@kbk="106 1 16 01000 01 6000 140"
    end
    if @st_koap=="19.4"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="19.4.1"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="19.5"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="19.6"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="19.7"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="19.7.5-1"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
    end
    if @st_koap=="19.20"
        @uin[5]="4"
		@uin[6]="3"
		@kbk="106 1 16 90020 02 6000 140"
	end
    if @st_koap=="20.25"
		@uin[5]="4"
		@uin[6]="2"
		@kbk="106 1 16 43000 01 6000 140"
    end
	
    @uin[8]=@god.to_s[2]
    @uin[9]=@god.to_s[3]
    
    if @doc_post_pro=="Постановление"
		@uin[10]="6"
    end
    if @doc_post_pro=="Протокол"
		@uin[10]="7"
    end

    if @sub_doc=="Гражданин/водитель"
		@uin[12]="1"
    end
    if @sub_doc=="ИП"
		@uin[12]="2"
    end
    if @sub_doc=="Должностное лицо"
		@uin[12]="3"
    end
    if @sub_doc=="Юридическое лицо"
		@uin[12]="4"
    end
    
    
    if  @dlin <=> 0
        0.upto(@dlin-1) { |i| @uin[18-i] = @nomer_doc[@dlin-1-i]}
    end
    
    @sum_proisv=@uin[0].to_i*1+@uin[1].to_i*2+@uin[2].to_i*3+@uin[3].to_i*4+@uin[4].to_i*5+@uin[5].to_i*6
    @sum_proisv=@sum_proisv+@uin[6].to_i*7+@uin[7].to_i*8+@uin[8].to_i*9+@uin[9].to_i*10
    @sum_proisv=@sum_proisv+@uin[10].to_i*1+@uin[11].to_i*2+@uin[12].to_i*3+@uin[13].to_i*4
    @sum_proisv=@sum_proisv+@uin[14].to_i*5+@uin[15].to_i*6+@uin[16].to_i*7+@uin[17].to_i*8
    @sum_proisv=@sum_proisv+@uin[18].to_i*9
    
    @uin_20 = @sum_proisv % 11
   
    if @uin_20 == 10
		@sum_proisv=@uin[0].to_i*3+@uin[1].to_i*4+@uin[2].to_i*5+@uin[3].to_i*6+@uin[4].to_i*7+@uin[5].to_i*8
		@sum_proisv=@sum_proisv+@uin[6].to_i*9+@uin[7].to_i*10+@uin[8].to_i*1+@uin[9].to_i*2
		@sum_proisv=@sum_proisv+@uin[10].to_i*3+@uin[11].to_i*4+@uin[12].to_i*5+@uin[13].to_i*6
		@sum_proisv=@sum_proisv+@uin[14].to_i*7+@uin[15].to_i*8+@uin[16].to_i*9+@uin[17].to_i*10
		@sum_proisv=@sum_proisv+@uin[18].to_i*1
		@uin_20 = @sum_proisv % 11
    end
    
    if @uin_20 == 10
		@uin_20 = 0
    end
   
    @uin[19]  = @uin_20.to_s
   
    @uin = @uin[0..2]+" "+@uin[3..4]+" "+@uin[5..6]+" "+@uin[7..9]+" "+@uin[10..18]+" "+@uin[19]
   
    erb :resul
end

__END__
 
@@glav
<!DOCTYPE html>
<html>
 <head>
   <meta name=viewport content="width=device-width, initial-scale=1">
   <title>УИН</title
 </head>
<body>
<form name="vvod" method ="post">
  <table>

    <tr>
      <td colspan="2" align="left">Вычисление УИН<br></td>
    </tr>  
    <tr>
      <td colspan="2"><hr></td>
    </tr>
  
    <tr>
      <td align="right">Субъект :</td> 
      <td align="left">
        
        <select name="sub_doc">
          <option>Гражданин/водитель
          <option>ИП
          <option>Должностное лицо
          <option>Юридическое лицо
        </select>
    </tr>
 
    <tr>
      <td align="right"><br>Документ :</td> 
      <td align="left"><br>
        <select name="doc_post_pro">
          <option>Постановление
          <option>Протокол
        </select>
      </td>
    </tr>
    
   <tr>
      <td align="right"><br>№ :</td> 
      <td align="left"><br>
       <input type="number" name="nomer_doc" size="12" min="0" max="999999" autocomplete="of" required><br></td>
      </td>
    </tr>
    
   <tr>
      <td align="right"><br>Ст. КоАП :</td> 
      <td align="left"><br>
        <select name="st_koap">
          <option>6.24
          <option>6.25
          <option>8.22
          <option>8.23
          <option>11.14.2
          <option>11.22
          <option>11.23
          <option>11.29
          <option>11.31
          <option>11.33
          <option>12.21.1
          <option>12.21.2
          <option>12.23
          <option>12.31.1
          <option>14.1
          <option>14.1.2
          <option>14.43
          <option>19.4
          <option>19.4.1
          <option>19.5
          <option>19.6
          <option>19.7
          <option>19.7.5-1          
          <option>19.20
          <option>20.25
        </select>
      </td>
    </tr>
    <tr>
      <td align="right"><br>Год :</td>
      <td align="left"><br>
        <select name="god">
          <option selected><%=Date.today.year%>
          <option>2015
          <option>2016
          <option>2017
          <option>2018
          <option>2019
          <option>2020
          <option>2021
          <option>2022
          <option>2023
          <option>2024
          <option>2025
        </select>
      </td>
    </tr>   
    <tr>
      <td colspan="2"><hr></td>
    </tr>
    <tr>
      <td colspan="2" align="left">
        <input type="submit" value="Рассчитать" >
      </td>
    </tr>
  </table>
</form>
</body>
</html>

@@resul
<!DOCTYPE html>
<html>
 <head>
   <meta name=viewport content="width=device-width, initial-scale=1">
   <title>УИН</title
 </head>
<body>
<form name="relultat" method ="post">
  <table >
    <tr>
      <td align="left"><%=@sub_doc%> </td>
    </tr>
    <tr>
      <td><hr></td>
    </tr>
    <tr>
      <td align="left"><%=@doc_post_pro%> № : <%=@nomer_doc%>
    </tr>   
    <tr>
      <td align="left">Ст. КоАП : <%=@st_koap%> </td>
    </tr>
    <tr>
      <td align="left">Год : <%=@god%> </td>
    </tr>
    <tr>
      <td align="left">КБК : <%=@kbk%> </td>
    </tr>
    <tr>
      <td><hr></td>
    </tr>
    <tr>
      <th align="left">УИН : <%=@uin%> </th>
    </tr>    
    <tr>
      <td><hr></td>
    </tr>
    <tr>
      <td align="left">
        <input value="Назад" name="vvod_povtor" onclick="location.href='/'" type="button">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
