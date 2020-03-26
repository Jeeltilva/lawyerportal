<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Register</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="adminResources/css/app.min.css">
  <link rel="stylesheet" href="adminResources/css/selectric.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <link rel="stylesheet" href="adminResources/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="adminResources/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='adminResources/image/favicon.ico' />
</head>

<body>
  <div class="loader"></div>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="card card-primary">
              <div class="card-header">
                <h4>Register</h4>
              </div>
              <div class="card-body">
                <form method="POST" action="lawyerdata.jsp" >
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="frist_name">First Name</label>
                      <input id="frist_name" type="text" class="form-control" name="fname" autofocus>
                    </div>
                    <div class="form-group col-6">
                      <label for="last_name">Last Name</label>
                      <input id="last_name" type="text" class="form-control" name="lname">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" type="email" class="form-control" name="emailid">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="row">
                  <div class="form-group col-6">
                      <label for="gender">Gender</label>
                     <input type="radio"  name="gender" value="male" required="">
								Male
							
								<input type="radio" name="gender" value="female" required="">
								Female
								<br>
					<div class="form-group col-6">
                      <label for="profile" class="d-block">Profile</label>
                      <input id="profile" type="file"  
                        name="profile">
                    </div>
                    </div>
                    
                   
                    
                    
                     <div class="form-group col-6">
                      <label for="nationality">Nationality</label>
                      	<select class="form-control" name="nationality">
						<option value="" disabled selected> <h6>Nationality<h6></option>
						<option value="Afghan"> Afghan </option>
						<option value="Albanian"> Albanian </option>
						<option value="Algerian"> Algerian </option>
						<option value="American"> American </option>
						<option value="Andorran"> Andorran </option>
						<option value="Angolan"> Angolan </option>
						<option value="Antiguans"> Antiguans </option>
						<option value="Argentinean"> Argentinean </option>
						<option value="Armenian"> Armenian </option>
						<option value="Australian"> Australian </option>
						<option value="Austrian"> Austrian </option>
						<option value="Azerbaijani"> Azerbaijani </option>
						<option value="Bahamian"> Bahamian </option>
						<option value="Bahraini"> Bahraini </option>
						<option value="Bangladeshi"> Bangladeshi </option>
						<option value="Barbadian"> Barbadian </option>
						<option value="Barbudans"> Barbudans </option>
						<option value="Batswana"> Batswana </option>
						<option value="Belarusian"> Belarusian </option>
						<option value="Belgian"> Belgian </option>
						<option value="Belizean"> Belizean </option>
						<option value="Beninese"> Beninese </option>
						<option value="Bhutanese"> Bhutanese </option>
						<option value="Bolivian"> Bolivian </option>
						<option value="Bosnian"> Bosnian </option>
						<option value="Brazilian"> Brazilian </option>
						<option value="British"> British </option>
						<option value="Bruneian"> Bruneian </option>
						<option value="Bulgarian"> Bulgarian </option>
						<option value="Burkinabe"> Burkinabe </option>
						<option value="Burmese"> Burmese </option>
						<option value="Burundian"> Burundian </option>
						<option value="Cambodian"> Cambodian </option>
						<option value="Cameroonian"> Cameroonian </option>
						<option value="Canadian"> Canadian </option>
						<option value="Cape Verdean"> Cape Verdean </option>
						<option value="Central African"> Central African </option>
						<option value="Chadian"> Chadian </option>
						<option value="Chilean"> Chilean </option>
						<option value="Chinese"> Chinese </option>
						<option value="Colombian"> Colombian </option>
						<option value="Comoran"> Comoran </option>
						<option value="Congolese"> Congolese </option>
						<option value="Congolese"> Congolese </option>
						<option value="Costa Rican"> Costa Rican </option>
						<option value="Croatian"> Croatian </option>
						<option value="Cuban"> Cuban </option>
						<option value="Cypriot"> Cypriot </option>
						<option value="Czech"> Czech </option>
						<option value="Danish"> Danish </option>
						<option value="Djibouti"> Djibouti </option>
						<option value="Dominican"> Dominican </option>
						<option value="Dominican"> Dominican </option>
						<option value="Dutch"> Dutch </option>
						<option value="Dutchman"> Dutchman </option>
						<option value="Dutchwoman"> Dutchwoman </option>
						<option value="East Timorese"> East Timorese </option>
						<option value="Ecuadorean"> Ecuadorean </option>
						<option value="Egyptian"> Egyptian </option>
						<option value="Emirian"> Emirian </option>
						<option value="Equatorial Guinean"> Equatorial Guinean </option>
						<option value="Eritrean"> Eritrean </option>
						<option value="Estonian"> Estonian </option>
						<option value="Ethiopian"> Ethiopian </option>
						<option value="Fijian"> Fijian </option>
						<option value="Filipino"> Filipino </option>
						<option value="Finnish"> Finnish </option>
						<option value="French"> French </option>
						<option value="Gabonese"> Gabonese </option>
						<option value="Gambian"> Gambian </option>
						<option value="Georgian"> Georgian </option>
						<option value="German"> German </option>
						<option value="Ghanaian"> Ghanaian </option>
						<option value="Greek"> Greek </option>
						<option value="Grenadian"> Grenadian </option>
						<option value="Guatemalan"> Guatemalan </option>
						<option value="Guinea-Bissauan"> Guinea-Bissauan </option>
						<option value="Guinean"> Guinean </option>
						<option value="Guyanese"> Guyanese </option>
						<option value="Haitian"> Haitian </option>
						<option value="Herzegovinian"> Herzegovinian </option>
						<option value="Honduran"> Honduran </option>
						<option value="Hungarian"> Hungarian </option>
						<option value="I-Kiribati"> I-Kiribati </option>
						<option value="Icelander"> Icelander </option>
						<option value="Indian"> Indian </option>
						<option value="Indonesian"> Indonesian </option>
						<option value="Iranian"> Iranian </option>
						<option value="Iraqi"> Iraqi </option>
						<option value="Irish"> Irish </option>
						<option value="Irish"> Irish </option>
						<option value="Israeli"> Israeli </option>
						<option value="Italian"> Italian </option>
						<option value="Ivorian"> Ivorian </option>
						<option value="Jamaican"> Jamaican </option>
						<option value="Japanese"> Japanese </option>
						<option value="Jordanian"> Jordanian </option>
						<option value="Kazakhstani"> Kazakhstani </option>
						<option value="Kenyan"> Kenyan </option>
						<option value="Kittian and Nevisian"> Kittian and Nevisian </option>
						<option value="Kuwaiti"> Kuwaiti </option>
						<option value="Kyrgyz"> Kyrgyz </option>
						<option value="Laotian"> Laotian </option>
						<option value="Latvian"> Latvian </option>
						<option value="Lebanese"> Lebanese </option>
						<option value="Liberian"> Liberian </option>
						<option value="Libyan"> Libyan </option>
						<option value="Liechtensteiner"> Liechtensteiner </option>
						<option value="Lithuanian"> Lithuanian </option>
						<option value="Luxembourger"> Luxembourger </option>
						<option value="Macedonian"> Macedonian </option>
						<option value="Malagasy"> Malagasy </option>
						<option value="Malawian"> Malawian </option>
						<option value="Malaysian"> Malaysian </option>
						<option value="Maldivan"> Maldivan </option>
						<option value="Malian"> Malian </option>
						<option value="Maltese"> Maltese </option>
						<option value="Marshallese"> Marshallese </option>
						<option value="Mauritanian"> Mauritanian </option>
						<option value="Mauritian"> Mauritian </option>
						<option value="Mexican"> Mexican </option>
						<option value="Micronesian"> Micronesian </option>
						<option value="Moldovan"> Moldovan </option>
						<option value="Monacan"> Monacan </option>
						<option value="Mongolian"> Mongolian </option>
						<option value="Moroccan"> Moroccan </option>
						<option value="Mosotho"> Mosotho </option>
						<option value="Motswana"> Motswana </option>
						<option value="Mozambican"> Mozambican </option>
						<option value="Namibian"> Namibian </option>
						<option value="Nauruan"> Nauruan </option>
						<option value="Nepalese"> Nepalese </option>
						<option value="Netherlander"> Netherlander </option>
						<option value="New Zealander"> New Zealander </option>
						<option value="Ni-Vanuatu"> Ni-Vanuatu </option>
						<option value="Nicaraguan"> Nicaraguan </option>
						<option value="Nigerian"> Nigerian </option>
						<option value="Nigerien"> Nigerien </option>
						<option value="North Korean"> North Korean </option>
						<option value="Northern Irish"> Northern Irish </option>
						<option value="Norwegian"> Norwegian </option>
						<option value="Omani"> Omani </option>
						<option value="Pakistani"> Pakistani </option>
						<option value="Palauan"> Palauan </option>
						<option value="Panamanian"> Panamanian </option>
						<option value="Papua New Guinean"> Papua New Guinean </option>
						<option value="Paraguayan"> Paraguayan </option>
						<option value="Peruvian"> Peruvian </option>
						<option value="Polish"> Polish </option>
						<option value="Portuguese"> Portuguese </option>
						<option value="Qatari"> Qatari </option>
						<option value="Romanian"> Romanian </option>
						<option value="Russian"> Russian </option>
						<option value="Rwandan"> Rwandan </option>
						<option value="Saint Lucian"> Saint Lucian </option>
						<option value="Salvadoran"> Salvadoran </option>
						<option value="Samoan"> Samoan </option>
						<option value="San Marinese"> San Marinese </option>
						<option value="Sao Tomean"> Sao Tomean </option>
						<option value="Saudi"> Saudi </option>
						<option value="Scottish"> Scottish </option>
						<option value="Senegalese"> Senegalese </option>
						<option value="Serbian"> Serbian </option>
						<option value="Seychellois"> Seychellois </option>
						<option value="Sierra Leonean"> Sierra Leonean </option>
						<option value="Singaporean"> Singaporean </option>
						<option value="Slovakian"> Slovakian </option>
						<option value="Slovenian"> Slovenian </option>
						<option value="Solomon Islander"> Solomon Islander </option>
						<option value="Somali"> Somali </option>
						<option value="South African"> South African </option>
						<option value="South Korean"> South Korean </option>
						<option value="Spanish"> Spanish </option>
						<option value="Sri Lankan"> Sri Lankan </option>
						<option value="Sudanese"> Sudanese </option>
						<option value="Surinamer"> Surinamer </option>
						<option value="Swazi"> Swazi </option>
						<option value="Swedish"> Swedish </option>
						<option value="Swiss"> Swiss </option>
						<option value="Syrian"> Syrian </option>
						<option value="Taiwanese"> Taiwanese </option>
						<option value="Tajik"> Tajik </option>
						<option value="Tanzanian"> Tanzanian </option>
						<option value="Thai"> Thai </option>
						<option value="Togolese"> Togolese </option>
						<option value="Tongan"> Tongan </option>
						<option value="Trinidadian or Tobagonian"> Trinidadian or Tobagonian </option>
						<option value="Tunisian"> Tunisian </option>
						<option value="Turkish"> Turkish </option>
						<option value="Tuvaluan"> Tuvaluan </option>
						<option value="Ugandan"> Ugandan </option>
						<option value="Ukrainian"> Ukrainian </option>
						<option value="Uruguayan"> Uruguayan </option>
						<option value="Uzbekistani"> Uzbekistani </option>
						<option value="Venezuelan"> Venezuelan </option>
						<option value="Vietnamese"> Vietnamese </option>
						<option value="Welsh"> Welsh </option>
						<option value="Welsh"> Welsh </option>
						<option value="Yemenite"> Yemenite </option>
						<option value="Zambian"> Zambian </option>
						<option value="Zimbabwean"> Zimbabwean </option>
						</select>	                      	
                    </div>
                    </div>
                    <div class="row">
                     <div class="form-group col-6">
                      <label for="mobile_no">Mobile No</label>
                      <input type="text" class="form-control" name = "mobileno" placeholder="  Phone Number" required="">
                    </div>
                    <div class="form-group col-6">
                      <label for="City">City</label>
                      <input id="City" type="text" class="form-control" name="city" placeholder=" City">
                    </div>
                    </div>
                    <div class="form-group">
                    <label for="address">Address</label>
                    <textarea type = "text" name="address" class="form-control" rows="5" cols="40" placeholder="  Address"></textarea>
                    </div>
                    <div class="row">
                    <div class="form-group col-6">
                      <label for="council_no">Council No</label>
                      <input id="Council no" type="text" class="form-control" name="councilno" placeholder=" Council Number">
                    </div>
                    <div class="form-group col-6">
                      <label for="university">University</label>
                      <input id="university" type="text" class="form-control" name="university" placeholder=" University">
                    </div>
                    </div>
                    <div class="row">
                    <div class="form-group col-6">
                      <label for="year">Experience</label>
                      <input id="year" type="text" class="form-control" name="year" placeholder=" Experience">
                    </div>
                     
                    </div>
                    	<div class="form-group">
                      <label for="practice">Area of Practice</label><br>
                      	<input type="checkbox" name="prac[]" value="Anticipatory bail">
								Anticipatory bail
								<input type="checkbox" name="prac[]" value="Arbitration">
								Arbitration
								<input type="checkbox" name="prac[]" value="Armed forced Tribunal">
								Armed forced Tribunal
								<input type="checkbox" name="prac[]" value="Banking/Finance">
								Banking/Finance
								<input type="checkbox" name="prac[]" value="Bankruptcy/Insolvency">
								Bankruptcy/Insolvency
								<input type="checkbox" name="prac[]" value="Breach of Contract">
								Breach of Contract
								<input type="checkbox" name="prac[]" value="Cheque Bounce">
								Cheque Bounce
								<input type="checkbox" name="prac[]" value="child Custody">
								child Custody
								<input type="checkbox" name="prac[]" value="Civil">
								Civil
								<input type="checkbox" name="prac[]" value="Consumer Court">
								Consumer Court
								<input type="checkbox" name="prac[]" value="Corporate">
								Corporate
								<input type="checkbox" name="prac[]" value="Criminal">
								Criminal
								<input type="checkbox" name="prac[]" value="Cyber Crime">
								Cyber Crime
								<input type="checkbox" name="prac[]" value="Divorce">
								Divorce
								<input type="checkbox" name="prac[]" value="Documentation">
								Documentation
								<input type="checkbox" name="prac[]" value="Family">
								Family
								<input type="checkbox" name="prac[]" value="GST">
								GST
								<input type="checkbox" name="prac[]" value="Insurance">
								Insurance
								<input type="checkbox" name="prac[]" value="International Law">
								International Law
								<input type="checkbox" name="prac[]" value="Media and Entertainment">
								Media and Entertainment
								<input type="checkbox" name="prac[]" value="Muslim Law">
								Muslim Law
								<input type="checkbox" name="prac[]" value="Patent">
								Patent
								<input type="checkbox" name="prac[]" value="Supreme Court">
								Supreme Court
								<input type="checkbox" name="prac[]" value="Trademarks & Copyright">
								Trademarks & Copyright
								<input type="checkbox" name="prac[]" value="Wills/Trusts">
								Wills/Trusts
                      	
                      	</div>
                   
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="password" class="d-block">Password</label>
                      <input id="password" type="password" class="form-control pwstrength" data-indicator="pwindicator"
                        name="password">
                      <div id="pwindicator" class="pwindicator">
                        <div class="bar"></div>
                        <div class="label"></div>
                      </div>
                    </div>
                    <div class="form-group col-6">
                      <label for="password2" class="d-block">Password Confirmation</label>
                      <input id="password2" type="password" class="form-control" name="password-confirm">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="agree" class="custom-control-input" id="agree">
                      <label class="custom-control-label" for="agree">I agree with the terms and conditions</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Register
                    </button>
                  </div>
                </form>
              </div>
              <div class="mb-4 text-muted text-center">
                Already Registered?
                <br> <a href="Login.jsp">Login</a>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- General JS Scripts -->
  <script src="adminResources/js/app.min.js"></script>
  <!-- JS Libraies -->
  <script src="adminResources/js/jquery.pwstrength.min.js"></script>
  <script src="adminResources/js/jquery.selectric.min.js"></script>
  <!-- Page Specific JS File -->
  <script src="adminResources/js/auth-register.js"></script>
  <!-- Template JS File -->
  <script src="adminResources/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="adminResources/js/custom.js"></script>
</body>

</html>