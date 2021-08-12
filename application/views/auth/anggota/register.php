<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-form">
                <form action="<?= base_url() ?>auth/prosesRegisterAnggota" method="POST">
                    <div class="form-group">
                        <center><label style="font-weight: bold; margin-bottom:20px">Register Anggota</label></center>             
                        <?php if (validation_errors()) {
                        ?>
                            <div class="alert alert-danger" role="alert">
                                <?= validation_errors() ?>
                            </div>
                        <?php
                        } ?>
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama_lengkap" value="<?= set_value('nama_lengkap'); ?>" class="form-control" autofocus required>
                    </div>
                    <div class="form-group">
                        <label>Alamat</label>
                        <input type="text" name="alamat" value="<?= set_value('alamat'); ?>" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="username" value="<?= set_value('username'); ?>" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" value="<?= set_value('email'); ?>" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>No. Telepon</label>
                        <input type="text" name="no_telpon" value="<?= set_value('no_telpon'); ?>" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" id="password" class="form-control"required>
                    </div>
                    <div class="checkbox mb-2">
                        <label>
                            <input type="checkbox" onclick="passwordShowUnshow()"> <i class="fa fa-eye"></i> Show password
                        </label>
                    </div>
                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Register <i class="fa fa-sign-in"></i></button>
                    <div class="register-link m-t-15 text-center mt-3">
                        <p>Login sebagai Anggota? <a href="<?= base_url() ?>auth/loginAnggota">disini!</a><br>
                            Login sebagai Pegawai? <a href="<?= base_url() ?>auth/loginPegawai">disini!</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>

</html>