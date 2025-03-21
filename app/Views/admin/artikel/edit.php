<?php $this->extend('layout/template') ?>

<?php $this->section('content') ?>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <form method="post" class="needs-validation" novalidate action="/adminppcproses/editartikel">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-2 border-bottom">
            <h1 class="h3">Edit Artikel</h1>

            <div class="btn-toolbar mb-2 mb-md-0">
                <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Submit</button>
            </div>
        </div>

        <?= csrf_field() ?>

        <div class="row">
            <div class="col-md-9">
                <div class="form-floating mb-3 has-validation">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" value="<?= $artikel['judul'] ?>" name="judul">
                    <label for="floatingInput">Judul</label>
                    <div class="invalid-feedback">
                        Isikan dengan benar !
                    </div>
                    <input type="hidden" name="id" value="<?= $artikel['id'] ?>">
                    <input type="hidden" name="kategori" value="<?= $artikel['kategori'] ?>">
                </div>

                <div class="form-floating">
                    <textarea class="form-control mb-3" placeholder="Leave a comment here" id="floatingTextarea" name="description" style="height: 120px;"><?= $artikel['description'] ?></textarea>
                    <label for="floatingTextarea">Description</label>
                </div>

                <div class="form-floating">
                    <textarea class="form-control mb-4" placeholder="Leave a comment here" id="floatingTextarea" name="artikel" style="height: 350px;"><?= $artikel['artikel'] ?></textarea>
                    <label for="floatingTextarea">Artikel</label>
                </div>
            </div>

            <div class="col-md-3">
                <div class="mt-2">
                    <select class="form-select form-select-sm" name="olehdefault" id="olehselect" disabled>
                        <option selected disabled value="">Silahkan Pilih Penulis</option>
                        <option><?= $adminlogin['nama'] ?></option>
                        <option value="">Custom</option>
                    </select>
                </div>

                <div class="input-group-sm has-validation mt-1">
                    <input disabled type="text" placeholder="Jika memilih penulis custom" class="form-control" id="penuliscustom" aria-describedby="inputGroupPrepend" name="penuliscustom" disabled autofocus>
                    <div class="invalid-feedback">
                        Isikan dengan benar !
                    </div>
                </div>

                <hr>
                <div class="mt-3">
                    <select disabled class="form-select form-select-sm" id="validationCustomUsername12" aria-describedby="inputGroupPrepend" required name="level">
                        <option selected disabled value="">Silahkan Pilih Level</option>
                        <option value="1a">Utama 1</option>
                        <option value="1b">Utama 2</option>
                        <option value="1c">Utama 3</option>
                        <option value="0">Umum</option>
                        <option value="pp">Populer Post</option>
                        <option value="no">Lewat</option>
                    </select>
                </div>
                <hr>

                <div class="input-group-sm has-validation mt-3">
                    <input disabled type="file" class="form-control" required id="pictureartikel" aria-describedby="inputGroupPrepend" name="picture">
                    <div class="invalid-feedback">
                        Isikan dengan benar !
                    </div>
                </div>

                <div id="uploaded" class="mt-1">
                    <img src="/assets/img/web/df2.jpg" style="width: 100%;" class="img-thumbnail">
                </div>

                <p>img class="img-fluid w-100 mb-2" src="/assets/img/artikel/kategori/slug2.jpg" style="object-fit: cover;"</p>
            </div>
        </div>

    </form>
</main>
<?php $this->endSection() ?>