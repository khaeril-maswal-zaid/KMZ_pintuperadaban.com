<?php $this->extend('layout2/template') ?>

<?php $this->section('content') ?>


<!-- Breaking News Start PENILAIN SEMENTARA JELEK DILIHAT -->
<!-- <div class="container-fluid mt-3 mb-3 pt-3">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12">
                <div class="d-flex justify-content-between">
                    <div class="section-title border-right-0 mb-0" style="width: 180px;">
                        <h4 class="m-0 text-uppercase font-weight-bold">Tranding</h4>
                    </div>
                    <div class="owl-carousel tranding-carousel position-relative d-inline-flex align-items-center bg-white border border-left-0" style="width: calc(100% - 180px); padding-right: 100px;">
                        <div class="text-truncate"><a class="text-secondary text-uppercase font-weight-semi-bold" href=""></a></div>
                        <div class="text-truncate"><a class="text-secondary text-uppercase font-weight-semi-bold" href=""></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<!-- Breaking News End -->


<!-- News With Sidebar Start -->
<div class="container-fluid pt-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <!-- News Detail Start -->
                <div class="position-relative mb-3">
                    <img class="img-fluid w-100" src="/assets/img/artikel/<?= url_title($artikel['kategori'], '', true) ?>/<?= $artikel['picture'] ?>" style="object-fit: cover;">

                    <div class="bg-white border border-top-0 p-4">
                        <!-- Tutup dulu karena jelk di lihat sementara  -->
                        <!-- <p class="fw-lighter text-secondary" style="font-size: 75%;"> Source Image : <a href="<?= $artikel['srcimg'] ?>" target="_blank" class="text-secondary"> <?= $artikel['srcimg'] ?> ...</a> </p> -->

                        <div class="mb-3">
                            <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href="/category/<?= url_title($artikel['kategori'], '', true) ?>"><?= $artikel['kategori'] ?></a>
                            <span class="text-body"><?= kelenderina($artikel['tanggal']) ?></span>
                        </div>

                        <h1 class="mb-3 text-secondary text-uppercase font-weight-bold h2"><?= $artikel['judul'] ?></h1>

                        <div class="text-dark"><?= $artikel['artikel'] ?></div>
                    </div>
                    <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                        <div class="d-flex align-items-center">
                            <img class="rounded-circle mr-2" src="/assets/img/<?= $penulis[1] ?>/<?= $penulis[0]['foto'] ?>" width="30" height="30" alt="">
                            <span><?= $artikel['oleh'] ?></span>
                        </div>
                        <div class="d-flex align-items-center">
                            <span class="ml-3"><i class="far fa-eye mr-2"></i><?= $visit ?></span>
                            <span class="ml-3"><i class="far fa-solid fa-user mr-2"></i><?= $viewers ?></span>
                        </div>
                    </div>
                </div>
                <!-- News Detail End -->


                <!--<hr>-->

                <!-- Iklan Area Start Banner buttom -->
                <div class="col-lg-12">
                    <div class="d-block d-md-none mb-3">
                        <div class="section-title mb-0">
                            <h4 class="m-0 text-uppercase font-weight-bold">
                                Advertisement
                            </h4>
                        </div>
                        <div class="bg-white text-center border border-top-0 p-3">
                            <img
                                src="/assets/img/advertisement/flayer-1-1.png"
                                class="w-100"
                                alt="Iklan Banner" />
                        </div>
                    </div>

                    <div class="d-none d-md-block mb-3">
                        <img
                            src="/assets/img/advertisement/banner-1-2.png"
                            class="w-100"
                            alt="Iklan Banner" />
                    </div>
                </div>
                <!-- Iklan Area End -->

                <!-- Comment Form Start Di Tutup karena belum ada Dtb nya -->
                <!-- <div class="mb-3">
                    <div class="section-title mb-0">
                        <h4 class="m-0 text-uppercase font-weight-bold">Leave a comment</h4>
                    </div>
                    <div class="bg-white border border-top-0 p-4">
                        <form action="/" method="post">
                            <div class="form-row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="name">Name *</label>
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="email">Email *</label>
                                        <input type="email" class="form-control" id="email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="message">Message *</label>
                                <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                            </div>
                            <div class="form-group mb-0">
                                <input type="submit" value="Leave a comment" class="btn btn-primary font-weight-semi-bold py-2 px-3">
                            </div>
                        </form>
                    </div>
                </div> -->
                <!-- Comment Form End -->

                <hr>

                <!-- New Post Start -->
                <div class="col-12 px-0">
                    <div class="section-title">
                        <h4 class="m-0 text-uppercase font-weight-bold">Latest News</h4>
                        <!--<a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>-->
                    </div>
                </div>

                <div class="col-lg-12 px-0">
                    <div class="row news-lg mx-0 mb-3">
                        <div class="col-md-6 h-100 px-0 ">
                            <img class="img-fluid h-100 w-100" src="/assets/img/artikel/<?= url_title($terbaru0['kategori'], '', true) ?>/<?= $terbaru0['picture'] ?>" style="object-fit: cover;">
                        </div>
                        <div class="col-md-6 d-flex flex-column border bg-white h-100 px-0">
                            <div class="mt-auto p-4 position-relative overflow-hidden">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href="/category/<?= url_title($terbaru0['kategori'], '', true) ?>"><?= $terbaru0['kategori'] ?></a>
                                    <?= KelenderIna($terbaru0['tanggal']) ?></small>
                                </div>
                                <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="/<?= $terbaru0['slug'] ?>/<?= $terbaru0['time'] ?>"><?= $terbaru0['judul'] ?></a>
                                <p class="m-0"><?= $terbaru0['description'] ?></p>
                            </div>
                            <div class="d-flex justify-content-between bg-white border-top mt-auto p-4">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle mr-2" src="/assets/img/<?= $penulis[1] ?>/<?= $penulis[0]['foto'] ?>" width="31" height="31" alt="">
                                    <small><?= $terbaru0['oleh'] ?></small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <small class="ml-3"><i class="far fa-eye mr-2"></i><?= $terbaru0['visit'] ?></small>
                                    <!--<small class="ml-3"><i class="far fa-comment mr-2"></i>123</small> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <?php foreach ($terbaru12 as $tbr12) : ?>
                        <div class="col-lg-6">
                            <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                                <div class="position-relative overflow-hidden" style="width: 150px; height: 100%;">
                                    <img class="img-fluid w-100 h-100" src="/assets/img/artikel/<?= url_title($tbr12['kategori'], '-', true) ?>/<?= $tbr12['picture'] ?>" alt="" style="object-fit: cover;">
                                </div>

                                <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                    <div class="mb-2">
                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2" href="/category/<?= url_title($tbr12['kategori'], '', true) ?>"><?= $tbr12['kategori'] ?></a>
                                        <small><?= KelenderIna($tbr12['tanggal']) ?></small>
                                    </div>
                                    <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="/<?= $tbr12['slug'] ?>/<?= $tbr12['time'] ?>"><?= substr($tbr12['judul'], 0, 30) ?>...</a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
                <!-- New Post End -->

            </div>

            <!-- Kolum bagian Kanan Halaman -->
            <?= $this->include("layout2/pages-right"); ?>
        </div>
    </div>
</div>
<!-- News With Sidebar End -->


<?php $this->endSection() ?>