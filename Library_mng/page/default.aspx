<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_default.aspx.cs" Inherits="Library_mng.page._default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/default.css" rel="stylesheet" />
    

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
    .carousel-item {
        height: 500px; /* Set a fixed height for the carousel items */
    }

    .carousel-item img {
        height: 100%; /* Ensure the image fills the height */
        width: 100%; /* Ensure the image fills the width */
        object-fit: cover; /* Maintain aspect ratio and cover the area */
    }

    .carousel-caption {
        bottom: 20%; /* Adjusts the position of the caption */
    }
    img:hover {
    transform: scale(1.1);
    transition: transform 0.3s ease;
}

    .btn-info {
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .btn-info:hover {
        background-color: #007BFF;
        transform: scale(1.05);
    }



      .tremove:hover {
        text-decoration: underline;
        color: #00bfff; /* Change color on hover for better visibility */
    }

    .fa {
        font-size: 24px; /* Increase icon size for better visibility */
        transition: transform 0.3s;
    }

    .fa:hover {
        transform: scale(1.1); /* Slightly enlarge icons on hover */
    }

    #canwe {
        font-weight: bold;
        font-size: 24px; /* Increase font size for the brand name */
    }

    #help {
        color: #00bfff; /* Highlight 'Help' part of the brand name */
    }

    .btn-primary {
        background-color: #007bff; /* Custom primary color for the button */
        border: none; /* Remove default border */
    }
</style>

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
            <a href="login1.aspx" class="btn btn-warning py-2 px-3  button-custom order-lg-last mr-3  ">Login</a>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a href="default.aspx" class="nav-link pl-0" style="color: white">Home</a></li>
                    <li class="nav-item"><a href="service_process.aspx" class="nav-link" style="color: white">Service Process</a></li>
                    <li class="nav-item"><a href="#" class="nav-link" style="color: white">OurTeam</a></li>
                    <li class="nav-item"><a href="Ourteam.aspx" class="nav-link" style="color: white">Speciality</a></li>
                    <li class="nav-item"><a href="gallery.aspx" class="nav-link" style="color: white">Gallery</a></li>
                    <li class="nav-item"><a href="Registrationpage.aspx" class="nav-link" style="color: white">Registration</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!------------below to navbar------------>

   <nav class="navbar py-4 navbar-expand-lg bg-white flex-row">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-3 mb-3">
                <a href="#"><img src="../images/logo.jpg" alt="Logo" style="height: 80px; width: 90px;" /></a>
            </div>
            <div class="col-lg-3 mb-3 d-flex align-items-center">
                <img src="../images/loc.png" alt="Location" style="height: 30px; width: 30px;">
                <span class="ms-2">Address: 16-18 Saraswati Nagar, Infront of Hanuman Mandir, Jawahar Chowk, Bhopal (462003)</span>
            </div>
            <div class="col-lg-3 mb-3">
                <span>Email: <a href="mailto:support@canwehelp.in">support@canwehelp.in</a></span>
            </div>
            <div class="col-lg-3 mb-3 d-flex align-items-center">
                <i class="fa-solid fa-phone me-1"></i>
                <span>Phone: +91 (0755) 4924976</span>
            </div>
        </div>
    </div>
</nav>



    <!------------------slider----------------->
  
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="img-fluid" src="../images/s1.jpg" alt="Health Image 1">
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                            <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="img-fluid" src="../images/s2.jpg" alt="Health Image 2">
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                            <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="img-fluid" src="../images/s3.jpg" alt="Health Image 3">
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                            <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="img-fluid" src="../images/s4.jpg" alt="Health Image 4">
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                            <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="img-fluid" src="../images/s5.jpg" alt="Health Image 5">
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                            <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="img-fluid" src="../images/s6.jpg" alt="Health Image 6" />
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
                            <p><a href="#" class="btn btn-warning px-4 py-3 mt-3">View our works</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="img-fluid" src="../images/s7.jpg" alt="Health Image 7"/>
                        <div class="carousel-caption justify-content-start">
                            <h1 class="heading text-primary">We Care</h1>
                            <h1 class="text-dark">About Your Health</h1>
                            <h3 class="text-dark">Your Health is Our Top Priority with Comprehensive, Affordable medical.</h3>
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
    <div class="row gx-3 gy-3 d-flex align-items-stretch">
        <div class="col-md-3 col-lg-3">
            <div class="bg-primary border border-white p-4 text-center text-white h-100">
                <figure>
                    <img class="img-fluid mb-3" src="../images/firstaidkit.jpg" style="height:70px;width:70px; background-color:white;" alt="First Aid Kit">
                    <figcaption>
                        <h3 class="heading">Qualified Doctors</h3>
                        <span>1. Support and Services</span><br />
                        <span>2. Palliative Care</span><br />
                        <span>3. ICU Care at Home</span><br />
                        <span>4. Neurological and Neurosurgical Care at Home</span>
                    </figcaption>
                </figure>
            </div>
        </div>

        <div class="col-md-3 col-lg-3">
            <div class="bg-primary border border-white p-4 text-center text-white h-100">
                <figure>
                    <img class="img-fluid mb-3" src="../images/ambulance.png" style="height:70px;width:70px; background-color:white;" alt="Ambulance">
                    <figcaption>
                        <h3 class="heading">Emergency Care</h3>
                        <span>1. Rehabilitation Care at Home</span><br />
                        <span>2. Post Operative Care at Home</span><br />
                        <span>3. Post Chemotherapy</span><br />
                        <span>4. Post Radiotherapy</span>
                    </figcaption>
                </figure>
            </div>
        </div>

        <div class="col-md-3 col-lg-3">
            <div class="bg-primary border border-white p-4 text-center text-white h-100">
                <figure>
                    <img class="img-fluid mb-3" src="../images/stethoscope.jpg" style="height:70px;width:70px; background-color:white;" alt="Stethoscope">
                    <figcaption>
                        <h3 class="heading">Outdoor Checkup</h3>
                        <span>1. Post Transplantation</span><br />
                        <span>2. Care of Bedridden Patients at Home</span><br />
                        <span>3. Ventilatory Support</span><br />
                        <span>4. Bed Sore Care at Home</span>
                    </figcaption>
                </figure>
            </div>
        </div>

        <div class="col-md-3 col-lg-3">
            <div class="bg-primary border border-white p-4 text-center text-white h-100">
                <figure>
                    <img class="img-fluid mb-3" src="../images/24hour.png" style="height:70px;width:70px; background-color:white;" alt="24 Hours Service">
                    <figcaption>
                        <h3 class="heading">24 Hours Service</h3>
                        <span>1. Psychosocial Support</span><br />
                        <span>2. Minimally Invasive Pain Interventions</span><br />
                        <span>3. Physiotherapy</span><br />
                        <span>4. Bereavement Care</span>
                    </figcaption>
                </figure>
            </div>
        </div>
    </div>
</div>



        <!------------about------------->
 <section class="ftco-section ftco-no-pt ftco-no-pb">
    <div class="container">
        <div class="row no-gutters align-items-center">
            <div class="col-lg-5">
                <img class="img-fluid rounded shadow-sm" src="../images/about.jpg" alt="About Us" style="object-fit: cover; height: 100%; width: 100%;">
            </div>
            
            <div class="col-lg-7 text-center text-lg-left pl-md-5">
                <div class="text-center text-lg-left">
                    <span class="d-block mb-2" style="font-weight: bold;">About CanWeHelp HomeCare</span>
                    <h2 class="mb-4" style="font-size: 28px;">Medical specialty concerned with the care of acutely ill hospitalized patients</h2>
                
                    <p>CanWeHelp is an organization providing pain and palliative care services to patients in their homes. Our services include pain management, symptom control, emotional support, and guidance for medical treatment. We are acknowledged in the health sector for our world-class services based on the principles of Right Diagnosis, Right Approach, and Right Intervention. Owing to our diligent work, we can provide premium medical services to our patients in need. Our team consists of some of the best doctors, consultants, and professionals who possess immense expertise and share the common vision of “Patient First.”</p>
                    
                    <p>Our dedicated team works for the benefit of patients by:</p>
                    <ul class="list-unstyled pl-0">
                        <li class="mb-2"><i class="fa-solid fa-check-circle"></i> Bereavement counseling for grieving relatives</li>
                        <li class="mb-2"><i class="fa-solid fa-check-circle"></i> Extending every possible comfort and care to patients for their well-being</li>
                        <li class="mb-2"><i class="fa-solid fa-check-circle"></i> Providing dietary guidelines and nutritional supplements for special needs</li>
                        <li class="mb-2"><i class="fa-solid fa-check-circle"></i> Arranging necessary medical equipment and supplies to improve patient survival and quality of life</li>
                        <li class="mb-2"><i class="fa-solid fa-check-circle"></i> Providing medical and nursing care to relieve pain and distressing symptoms</li>
                        <li><i class="fa-solid fa-check-circle"></i> Offering a space for patients and families to discuss troubling issues with experienced professionals</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>




       <!----------------doorcare-------------->


  <div class="container mt-5 mb-4">
    <div class="text-center mb-4">
        <h5>Provide medical service on a call or booking</h5>
        <h2 class="mb-4" style="font-size: 28px;">Door Step Medical Services</h2>
    </div>
    
    <div class="row text-center">
        <div class="col-lg-2 col-6 d-flex flex-column align-items-center mb-4">
            <img class="img-fluid border border-info mb-2" src="../images/deco-firstaid.png" style="height: 100px; width: 100px;" alt="Care at Home"/>
            <h3>Care at Home</h3>
            <p>
                1. Reasons of home care <br />
                2. Multidisciplinary approach <br />
                3. Telemedicine: The future <br />
                4. Symptoms managed at home
            </p>
        </div>

        <div class="col-lg-2 col-6 d-flex flex-column align-items-center mb-4">
            <img class="img-fluid border border-info mb-2" src="../images/deco-dropper.jpg" style="height: 100px; width: 100px;" alt="Symptoms Control"/>
            <h3>Symptoms Control</h3>
            <p>
                1. Breathlessness <br />
                2. Lymphoedema <br />
                3. Ascitis <br />
                4. Pleural Effusion
            </p>
        </div>

        <div class="col-lg-2 col-6 d-flex flex-column align-items-center mb-4">
            <img class="img-fluid border border-info mb-2" src="../images/dco-experiment.png" style="height: 100px; width: 100px;" alt="Understanding Palliative Care"/>
            <h3>Understanding Palliative Care</h3>
            <p>
                1. What Is Palliative Care? <br />
                2. Understanding Palliative Care <br />
                3. Talking About Palliative Care <br />
                4. Pediatric Palliative Care
            </p>
        </div>

        <div class="col-lg-2 col-6 d-flex flex-column align-items-center mb-4">
            <img class="img-fluid border border-info mb-2" src="../images/deco-stethosci=ope.png" style="height: 100px; width: 100px;" alt="Support and Services"/>
            <h3>Support and Services</h3>
            <p>
                1. Directory of Services <br />
                2. Advance Care Planning <br />
                3. Teenagers and Children
            </p>
        </div>

        <div class="col-lg-2 col-6 d-flex flex-column align-items-center mb-4">
            <img class="img-fluid border border-info mb-2" src="../images/deco-doctor.png" style="height: 100px; width: 100px;" alt="Advocacy and Resources"/>
            <h3>Advocacy and Resources</h3>
            <p>
                1. Information <br />
                2. Events and news <br />
                3. Education Research and awareness <br />
                4. Award &amp; Recognition <br />
                5. Research and Publication
            </p>
        </div>

        <div class="col-lg-2 col-6 d-flex flex-column align-items-center mb-4">
            <img class="img-fluid border border-info mb-2" src="../images/deco-ambulance.png" style="height: 100px; width: 100px;" alt="Events and Training"/>
            <h3>Events and Training</h3>
            <p>
                1. [Details coming soon] <br />
                2. [Details coming soon]
            </p>
        </div>
    </div>
</div>






      <!-------------------free enquiry--------------->
    
    <div class="container-fluid mb-3" style="background-image: url(../images/bg_3.jpg); background-size: cover; background-position: center;" data-stellar-background-ratio="0.5">
    <div class="row text-center text-white py-5">
        <div class="col-md-12">
            <h2 class="display-4">We Provide Appointment, Homecare, Health Checkup, Transport, and Care Services</h2>
            <p class="mb-0">Your Health is Our Top Priority with Comprehensive, Affordable Medical Services.</p>
        </div>
    </div>
    <div class="row gy-3 d-flex justify-content-center">
        <div class="col-md-3 d-flex justify-content-center">
            <p class="mb-2">
                <a href="#" class="btn btn-info px-4 py-3 text-white rounded-3 shadow">Homecare Request</a>
            </p>
        </div>
        <div class="col-md-3 d-flex justify-content-center">
            <p class="mb-2">
                <a href="#" class="btn btn-info px-4 py-3 text-white rounded-3 shadow">Health Checkup Request</a>
            </p>
        </div>
        <div class="col-md-3 d-flex justify-content-center">
            <p class="mb-2">
                <a href="#" class="btn btn-info px-4 py-3 text-white rounded-3 shadow">Transport Request</a>
            </p>
        </div>
        <div class="col-md-3 d-flex justify-content-center">
            <p class="mb-2">
                <a href="#" class="btn btn-info px-4 py-3 text-white rounded-3 shadow">Appointment Request</a>
            </p>
        </div>
    </div>
</div>



    <!--Footer start-->

 <footer class="bg-dark text-white">
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-4 mt-4">
                <h4 id="canwe">CanWe<span id="help">Help</span></h4>
                <p>We provide personalized and professional home health care services in India, allowing quick and convenient recovery within the comfort of one's home. Key medical services offered include setting up ICU at home, providing cancer care at home, nursing care, and physiotherapy services.</p>
                
                <h4 class="mt-4">Have Questions?</h4>
                <p><strong>Address:</strong> 16-18 Saraswati Nagar, In front of Hanuman Mandir, Jawahar Chowk, Bhopal (462003)</p>
                <p><strong>Phone:</strong> +91 (0755) 4924976</p>
                <p><strong>Email:</strong> <a href="mailto:support@canwehelp.in" class="text-white">support@canwehelp.in</a></p>
            </div>

            <div class="col-lg-4 mt-4">
                <h4>Links</h4>
                <ul class="list-unstyled">
                    <li><a class="tremove text-white" href="#">&rarr; Home</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Services Process</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Our Team</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Services</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Gallery</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Registration</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Login</a></li>
                    <li><a class="tremove text-white" href="#">&rarr; Enquiry</a></li>
                </ul>
            </div>

            <div class="col-lg-4 mt-4">
                <h4>Opening Hours</h4>
                <h6 class="fa-regular fa-clock">We are open 24/7</h6>

                <h4 class="mt-4">Subscribe to Us!</h4>
                <form runat="server">
                    <div class="form-group" id="footerform">
                        <input type="email" class="form-control mb-3 text-center" placeholder="Enter email address" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Subscribe</button>
                </form>

                <div class="mt-4">
                    <a href="#" class="fa fa-facebook me-3 text-white"></a>
                    <a href="#" class="fa fa-twitter me-3 text-white"></a>
                    <a href="#" class="fa fa-google me-3 text-white"></a>
                    <a href="#" class="fa fa-linkedin me-3 text-white"></a>
                    <a href="#" class="fa fa-youtube me-3 text-white"></a>
                    <a href="#" class="fa fa-instagram me-3 text-white"></a>
                    <a href="#" class="fa fa-skype me-3 text-white"></a>
                    <a href="#" class="fa fa-yahoo text-white"></a>
                </div>
            </div>
        </div>

        <div class="row text-center mt-4">
            <p class="col-12">
                &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved - CanWeHelp
            </p>
        </div>
    </div>
</footer>


</body>
</html>
