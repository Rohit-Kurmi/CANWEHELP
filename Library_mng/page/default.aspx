<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_default.aspx.cs" Inherits="Library_mng.test" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/default.css" rel="stylesheet" />
    

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <title>Can WE Help</title>
    <meta charset="utf-8" />


</head>
<body>
    <!--start nav-->


    <nav class="navbar navbar-expand-lg bg-primary navbar-primary " style="color: white">

        <div class="container ">

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span style="color:white">Menu</span>
            </button>

            <a href="enquiry.aspx" class="btn btn-warning py-2 px-3 button-custom order-lg-last ml-3">Enquiry</a>
            <a href="login.aspx" class="btn btn-warning py-2 px-3  button-custom order-lg-last mr-3  ">Login</a>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a href="#" class="nav-link pl-0" style="color: white">Home</a></li>
                    <li class="nav-item"><a href="#" class="nav-link" style="color: white">Service Process</a></li>
                    <li class="nav-item"><a href="#" class="nav-link" style="color: white">OurTeam</a></li>
                    <li class="nav-item"><a href="#" class="nav-link" style="color: white">Speciality</a></li>
                    <li class="nav-item"><a href="#" class="nav-link" style="color: white">Gallery</a></li>
                    <li class="nav-item"><a href="#" class="nav-link" style="color: white">Registration</a></li>
                </ul>
            </div>
        </div>
    </nav>


    <!------------below to navbar------------>

    <nav class="navbar py-4 navbar-expand-lg  bg-white flex-row">
         <div class="container">
             <div class="row">
                 <div class="col-lg-3 mb-3">
                    <a><img src="../images/logo.jpg"  style="height: 80px; width: 90px;" /></a>
                </div>

                 <div class="col-lg-3 mb-3">

                    <img src="../images/loc.png"  style="height:30px ;width:30px"><span>Address:16-18 Saraswati Nagar, Infront of Hanuman Mandir, Jawahar chowk bhopal (462003)</span>
                 </div>

                 <div class="col-lg-3 mb-3">
                       <span">Email: support@canwehelp.in</span>

                  </div>
                   <div class="col-lg-3 mb-3">
                       <i class="fa-solid fa-phone"><span>Phone: +91 (0755) 4924976</span></i>
                    </div>

            </div>
        </div>
    </nav>


    <!------------------slider----------------->
    <div class="container-fluid">
        <div class="row ">

            <div class="col-lg-12 col-mg-12 col-sm-12">



                <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">

                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <img class="img-fluid" src="../images/s1.jpg" class="d-block w-100" alt="..." style="height:auto;width:max;">
                            <div class="carousel-caption justify-content-left" >
                            <h1  class="heading" style="color:blue">We Care</h1> 
                              <h1  style="color:black">About Your Health</h1>
                                    <h3  style="color:black">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                                    <p><a href="#" class="btn btn-warning  px-4 py-3 mt-3">View our works</a></p>
                                </div>
                                
                        </div>

                        <div class="carousel-item">
                          <img class="img-fluid" src="../images/s2.jpg" class="d-block w-100" alt="..." style="height:auto;width:max;">
                             <div class="carousel-caption" >
                        <h1  class="heading" style="color:blue">We Care</h1> 
                         <h1 style="color:black">About Your Health</h1>
                         <h3  style="color:black">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                          <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                             </div>
                        </div>

                        <div class="carousel-item">
                          <img class="img-fluid"  src="../images/s3.jpg"" class="d-block w-100" alt="..." style="height:auto;width:max;">
                             <div class="carousel-caption" >
                            <h1  class="heading" style="color:blue">We Care</h1> 
                             <h1 style="color:black">About Your Health</h1>
                             <h3  style="color:black">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                             <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                             </div>
                        </div>

                         <div class="carousel-item">
                           <img class="img-fluid" src="../images/s4.jpg" class="d-block w-100" alt="..." style="height:auto;width:max;">
                              <div class="carousel-caption" >
                              <h1 class="heading" style="color:blue">We Care</h1> 
                              <h1 style="color:black">About Your Health</h1>
                                 <h3  style="color:black">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                                 <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                             </div>
                          </div>
                          <div class="carousel-item">
                              <img class="img-fluid" src="../images/s5.jpg" class="d-block w-100" alt="..." style="height:auto;width:max;">
                               <div class="carousel-caption" >
                             <h1  class="heading" style="color:blue">We Care</h1> 
                             <h1 style="color:black">About Your Health</h1>
                                 <h3  style="color:black">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                                 <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                             </div>
                            </div>
                          <div class="carousel-item">
                                <img class="img-fluid" src="../images/s6.jpg" class="d-block w-100" alt="..." style="height:auto;width:max;">
                               <div class="carousel-caption" >
                                <h1  class="heading" style="color:blue">We Care</h1> 
                                <h1 style="color:black">About Your Health</h1>
                                 <h3  style="color:black">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                                 <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                                  </div>
                           </div>

                           <div class="carousel-item">
                              <img class="img-fluid" src="../images/s7.jpg" class="d-block w-100" alt="..." style="height:auto;width:max;" >
                                <div class="carousel-caption" >
                                <h1  class="heading" style="color:blue">We Care</h1> 
                                <h1 style="color:black">About Your Health</h1>
                                     <h3  style="color:black" >Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                                     <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                                 </div>  
                           </div>
                      </div>
                    </div>
                 </div>
                </div>
            </div>


    <!------------about  services------------->

        <div class="container bg-light mt-2 mb-2">
        <div class="row gx-3 gy-3 " >
                  
             
                  <div class="col-md-3 col-lg-3 bg-primary border border-white  p-4  ">
                     <div class="media  text-center ">
                          <div class="media-body p-3 text-white ">
                              <img class="align-center img-fluid" src="../images/firstaidkit.jpg" style="height:70px;width:70px;background-color:white">
                             <h3 class="heading">Qualified Doctors</h3>
                             <span>1.Support and Services</span><br />
                             <span>2.Palliative Care</span><br />
                             <span>3.ICU Care at Home</span><br />
                             <span>4.Neurological and Neurosurgical Care at Home</span>
                         </div>
                         </div>
                      </div>
                



                          <div class="col-md-3 col-lg-3 bg-primary border border-white   p-4">
                            <div class="media  text-center">
                           <div class="media-body p-3 text-white">
                                 <img class="align-center img-fluid" src="../images/ambulance.png" style="height:70px;width:70px;background-color:white">
                                <h3 class="heading">Emergency Care</h3>
                                <span>1.Rehabilitation Care at Home</span><br />
                                <span>2.Post Operative Care at Home</span><br />
                                <span>3.Post Chemotherapy</span><br />
                                <span>4.Post Radiotherapy</span>


                                    </div>
                                </div>
                            </div>


                          <div class="col-md-3 col-lg-3 bg-primary border border-white  p-4">
                            <div class="media  text-center">
                           <div class="media-body  p-3 text-white">
                                        <img class="align-center img-fluid" src="../images/stethoscope.jpg" style="height:70px;width:70px;background-color:white">
                                      <h3 class="heading">Outdoor Checkup</h3>
                                    <span>1.Post Transplantation</span><br />
                                    <span>2.Care of Bed Ridden Patient at Home</span><br />
                                    <span>3.Ventilatory</span><br />
                                    <span>4.Bed Sore Care at Home</span>
                                    </div>
                                </div>
                            </div>

                             <div class="col-md-3 col-lg-3 bg-primary border border-white  p-4">
                           <div class="media  text-center">
                          <div class="media-body p-3 text-white">
                            
                              <img class="align-center img-fluid" src="../images/24hour.png" style="height:70px;width:70px;background-color:white">
                                     <h3 class="heading">24 Hours Service</h3>
                                    <span>1.Psychosocial support</span><br />
                                    <span>2.Minimally Invasive Pain Interventions</span><br />
                                    <span>3.Physiotherapy</span><br />
                                    <span>4.Bereavement care</span>
                                </div>
                            </div>
                         </div>
                   </div>
                </div>
 


        <!------------about------------->
 <section class="ftco-section ftco-no-pt ftc-no-pb">
     <div class="container">
         <div class="row no-gutters">
             <div class="col-lg-5">
                 <img class="img-fluid  " src="../images/about.jpg" / >
                 </div>
             
             <div class="col-lg-7 ml-5  text-center">

                     <div class="pl-md-5 ml-md-5 text-center">
                         <span>About CanWeHelp HomeCare</span>
                         <h2 class="mb-4" style="font-size: 28px;">Medical specialty concerned with the care of acutely ill hospitalized patients</h2>
                 
                     <p>CanWeHelp is an Organization, which provides pain and palliative care services to patients at their home. The services include Pain management at home, symptom control, and guidance for medical treatment, emotional support and counseling. We are acknowledged in the health sector for our world class services to the patients, which are based on Right Diagnosis, Right Approach and Right Intervention. Owing to our diligent work, we can provide premium medical services to our patients in need. To render premium services, we are having one of the best doctors, consultants and other professionals, who possess immense expertise about the domain and share the common vision of “Patient First”.</p>
                     <p>Our team comprises of experienced and dedicated individuals who work for the benefit of patients by</p>
                     <ul>
                         <li>Bereavement counselling to grieving relatives</li>
                         <li>Extending every possible comfort and care to the patient for his well-being</li>
                         <li>Giving dietary guidelines and nutritional supplements to those with special needs</li>
                         <li>Arranging all the required medical equipment and supplies to improve patient survival and quality of life</li>
                         <li>Giving medical and nursing care to relieve pain and other distressing symptoms that accompanies an illness or comes as side-effect of treatment.</li>
                         <li>Providing an opportunity to the patient and the family to talk over issues that may be troubling them with experienced and caring professionals.</li>
                     </ul>
                 </div>
             </div>
        </div>
     </div>
 </section>



       <!----------------doorcare-------------->


  
     <div class="container mt-5 mb-4">
         
             <div class="">
                 <h5 class="text-center" >Provide medical service on a call or booking </h5>
                 <h2 class="mb-4" style="font-size: 28px; text-align: center">Door Step Medical Services</h2>

         </div>
         <div class="row ">
             <div class="col-lg-2  col-6 d-flex justify-content-center">
                 <img class="../img-fluid mt-5 border border-info" src="../images/deco-firstaid.png"  style="height:100px; width:100px"/>

             </div>

                 <div class="col-lg-2 col-6 ">
                      <h3>Care at Home</h3>
                        
                         <p>
                             1.Reasons of home care       
                             <br />
                             2.Multidisciplinary approach
                             <br />
                             3.Telemedicine: The future  
                             <br />
                             4.Symptoms managed at home
                         </p>
                     </div>
                 
             
             <div class="col-lg-2 col-6  d-flex  justify-content-center">
                 <img class="../img-fluid mt-5 border border-info" src="../images/deco-dropper.jpg" style="height:100px; width:100px" />
             </div>

                 <div class="col-lg-2  col-6  ">
                         <h3>Symptoms Control</h3>
                         <p>
                             1.Breathlessness<br />
                             2.Lymphoedema<br />
                             3.Ascitis<br />
                             4.Pleural Effusioon
                         </p>
                     </div>

             <div class="col-lg-2  col-6  d-flex  justify-content-center">
                 <img class="../img-fluid mt-5 border border-info" src="../images/dco-experiment.png" style="height:100px; width:100px" >
             </div>

                 <div class="col-lg-2  col-6 ">
                 
                         <h3>Understanding Palliative Care</h3>
                         <p>
                             1.What Is Palliative Care?<br />
                             2.Understanding Palliative Care<br />
                             3.Talking About Palliative Care<br />
                             4.Pediatric Palliative Care
                         </p>
                     </div>


                           <div class="col-lg-2  col-6  d-flex  justify-content-center">
                          <img class="../img-fluid mt-5 border border-info" src="../images/deco-stethosci=ope.png" style="height:100px; width:100px" >
                       </div>

                         <div class="col-lg-2  col-6  t">
                         <h3>Support and Services</h3>
                         <p>
                             1.Directory of Services<br />
                             2.Advance Care Planning<br />
                             3.Teenagers and Children
                         </p>
                     </div>
                 
                         <div class="col-lg-2  col-6  d-flex  justify-content-center">
                           <img class="../img-fluid mt-5 border border-info" src="../images/deco-doctor.png" style="height:100px; width:100px" >
                        </div>

                          <div class="col-lg-2  col-6 ">
                         <h3>Advocacy and Resources</h3>
                         <p>
                             1.Information<br />
                             2. Events and news<br />
                             3.Education Research and awareness
                         <br />
                             4.Award &amp; Recognition<br />
                             5. Research and Publication
                         </p>
                     </div>
                 


                          <div class="col-lg-2  col-6  d-flex justify-content-center ">
                               <img class="../img-fluid mt-5 border border-info" src="../images/deco-ambulance.png" style="height:100px; width:100px">
                            </div>
              
                              <div class="col-lg-2  col-6 ">
                         <h3>Events and Training</h3>
                         <p>
                             1.<br />
                             2.<br />
                         </p>
                     </div>
                 </div>
            </div>






      <!-------------------free enquiry--------------->
    

      <div class="container-fluid mb-3"  style="background-image: url(../images/bg_3.jpg); " data-stellar-background-ratio="0.5">
          <div class="row">
              <div class="col-md-12 text-white">
                  <h2>We Provide Appointment, Homecare, health checkup, Transport and care Services </h2>
                  <p class="mb-0 ">Your Health is Our Top Priority with Comprehensive, Affordable medical.</p>
                  <p></p>
              </div>
            </div>
            <div class="row gy-3 d-flex flex-lg-row flex-xxl-row flex-xl-row flex-column justify-content-center">
              <div class="col-md-3 d-flex justify-content-center ">
                  <p class="mb-2"><a href="#" class="btn btn-info px-4 py-3  text-white">Homecare Request</a></p>
              </div>
               <div class="col-md-3 d-flex justify-content-center">
                  <p class="mb-2"><a href="#" class="btn btn-info px-4 py-3 text-white">Healthcheckup Request</a></p>
              </div>
               <div class="col-md-3 d-flex justify-content-center">
                  <p class="mb-2"><a href="#" class="btn btn-info px-4 py-3 text-white">Transport Request</a></p>
              </div>
                <div class="col-md-3 d-flex justify-content-center">
                  <p class="mb-2"><a href="#" class="btn btn-info px-4 py-3 text-white">Appointment Request</a></p>
              </div>
          </div>
      </div>



    <!--Footer start-->

    <footer class="bg-dark" style="color: white">
        <div class="container ">
            <div class="row ">
                <div class="col-lg-4 mt-4">
                    <h4 id="canwe">CanWe<span id="help">Help</span></h4>
                    <br />
                    <p>We Provide personalized and professional home health care services in India to allow quick and convenient recovery within the comfort of one's home. Some of the key medical services offered include setting up ICU atHOME, providing Cancer Care atHOME, nursing care, physiotherapy services.</p>
                    <br />
                    <h4>Have a Questions?</h4>
                    <br />


                    <p>Address: 16-18 Saraswati Nagar, Infront of Hanuman Mandir, Jawahar chowk bhopal (462003)</p>
                    <br />
                    <p>Phone: +91 (0755) 4924976</p>
                    <br />
                    <p>support@canwehelp.in</p>

                </div>

                <br>
                <br />



                <div class="col-lg-4 mt-4">

                    <h4>Links</h4>

                    <br />
                    <ul class="list-unstyled">
                        <li><a class="tremove" href="#" style="color: white">&#8594  Home</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 Services process</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 OurTeam</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 Services</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 Gallery</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 Regiatration</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 Login</a></li>
                        <li><a class="tremove" href="#" style="color: white">&#8594 Enquiry</a></li>

                    </ul>
                </div>
                <br>
                <br />

                <div class="col-lg-4 mt-4">
                    <h4>Opening Hours</h4>
                    <br />
                    <br />
                    <h6 class="fa-regular fa-clock ">We are open 24/7</h6>
                    <br />
                    <br />

                    <h4>Subscribe Us!</h4>
                    <br />

                    <form runat="server">
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter email address" CssClass="form-control mb-3 text-center"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Subscribe" class="form-control submit bg-primary text-white px-3 " />
                    </form>


                    <br />
                    <br />
                    <br />

                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-google"></a>
                    <a href="#" class="fa fa-linkedin"></a>
                    <a href="#" class="fa fa-youtube"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-skype"></a>
                    <a href="#" class="fa fa-yahoo"></a>


                </div>
                <div class="row text-center">
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved - CanWeHelp
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
    </footer>


</body>
</html>
