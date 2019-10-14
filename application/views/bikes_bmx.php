<?php include "header.php" ?>
<div class="container  bg-white pt-2">
    <div class="row mb-2">
        <div class="col-md-12">
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/specialized.svg">
            </a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/giant.svg">
            </a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/cube2.svg">
            </a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/cano.svg">
            </a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/mavic.svg"></a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/cas.svg">
            </a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/endura.svg">
            </a>
            <a href="delivery-info"class="btn">
                <img class="img-fluid d-block pt-1" src="<?php echo base_url() ?>assets/images/altura.svg">
            </a>
        </div>
    </div>

    <div class="row">
        <div class="side-bar col-md-3">
            <div class="search-hotel">
                <h3 class="agileits-sear-head text-dark">FILTERED BY<hr></h3>
                <ul class="list-unstyled" >
                    <li >
                        <input type="checkbox" class="checked">
                        <span class="span">Bikes</span>
                    </li>
                    <li>
                        <input type="checkbox" class="checked">
                        <span class="span">BMX Bikes</span>
                    </li>
                </ul>
            </div>
            <!-- price range -->

            <!-- //price range -->
            <!-- food preference -->
            <div class="left-side">
                <div id="accordion">
                    <div class="card">
                        <div class="card-header" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="headingOne">
                            <h5 class="mb-0">
                                <button class="btn btn-link" >
                                    STOCK
                                </button>
                            </h5>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <ul>
                                    <li>
                                        <input type="checkbox" class="checked">
                                        <span class="span">In-Stock Only</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingtwo">
                            <h5 class="mb-0">
                                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="#collapseTwo">
                                    BRAND
                                </button>
                            </h5>
                        </div>
                    </div>
                    <div id="collapseTwo" class="collapse show" aria-labelledby="headingtwo" data-parent="#accordion">
                        <div class="card-body">
                            <ul>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Cuda(2)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">DiamondBack(1)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">GT(34)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Kink(15)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Monggoose(14)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Radio(13)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Saracen(1)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Scott(4)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">SE Bikes(3)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">Tall Order(8)</span>
                                </li>
                                <li>
                                    <input type="checkbox" class="checked">
                                    <span class="span">WeThePeople(8)</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingthree">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="#collapseThree">
                                GENDER
                            </button>
                        </h5>
                    </div>
                </div>
                <div id="collapseThree" class="collapse" aria-labelledby="headingthree" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Kids And Junior(7)</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">Mens Or Unisex(96)</span>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingfour">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="#collapsefour">
                                YEAR
                            </button>
                        </h5>
                    </div>
                </div>
                <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">2020(69)</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">2019(33)</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">2018(1)</span>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingfife">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefife" aria-expanded="true" aria-controls="#collapsefife">
                                WHELL SIZE
                            </button>
                        </h5>
                    </div>
                </div>
                <div id="collapsefife" class="collapse" aria-labelledby="headingfife" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">15-17"(1)</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">18-20"(5)</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">24-24"(2)</span>
                            </li>
                            <li>
                                <input type="checkbox" class="checked">
                                <span class="span">27-29"(3)</span>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingfife">
                        <h5 class="mb-0">
                            <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapsefife" aria-expanded="true" aria-controls="#collapsefife">
                                Price range
                            </button>
                        </h5>
                    </div>
                </div>
                <div id="collapsefife" class="collapse" aria-labelledby="headingfife" data-parent="#accordion">
                    <div class="card-body">
                        <div class="range">
                            <h3 class="agileits-sear-head"></h3>
                            <ul class="dropdown-menu6">
                                <li>

                                    <div id="slider-range"></div>
                                    <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-9">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 pt-2">
                        <h4>BMX BIKES</h4>
                        <p>
                            <small> BMX bikes are one of the best ways to develop your bike skills. Hit up the skatepark, session the dirt jumps or race out of the start gate. BMX bikes offer more thrills than almost any other bike. BMX bikes are characterized by 20” wheels, single speed drivetrains and riser handlebars. Race BMX bikes are built for speed and feature large chainrings with skinnier tyres. Freestyle BMX bikes are for tricking jumps so have smaller chainrings and wider tyres.         
                            </small></p>
                        <p>
                            <small>GT BMX bikes have BMX racing in their DNA while WeThePeople and Diamondback focus more on freestyle, park and street BMX bikes. Whatever style of BMX riding you are into we have a full range for you to choose from. We stock a large range of BMX bikes for adults and kids.
                            </small> </p>

                    </div>
                    <div class="col-md-4">
                        <br>
                        <br>
                        <img class="img-fluid d-block" src="<?php echo base_url() ?>assets/images/Bmx-Bikes.jpg">

                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 py-2" role="button" style="cursor: pointer">
                        <div class="card"> <img class="card-img-top" src="<?php echo base_url() ?>assets/images/hp-guide-cyclocross-bikes.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="text-danger" >Cyclocross<br>Bike Guide</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                    
                   
                </div>
            </div>
        </div>
    </div>
</div>



<?php include "footer.php" ?>