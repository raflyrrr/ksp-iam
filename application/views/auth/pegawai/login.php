<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-form">
                <form action="<?= base_url() ?>auth/prosesLoginPegawai" method="POST">
                    <div class="form-group">
                        <center><label style="font-weight: bold;">Login</label></center>
                        <?= $this->session->flashdata('message'); ?><br>
                        <label>Email / Username</label>
                        <input type="text" name="email" class="form-control" placeholder="Email or Username" autofocus required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="checkbox mb-2">
                        <label>
                            <input type="checkbox" onclick="passwordShowUnshow()"> <i class="fa fa-eye"></i> Show password
                        </label>
                    </div>
                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30 mb-3">Login <i class="fa fa-sign-in"></i></button>
                    <div class="register-link m-t-15 text-center">
                        <p>Login sebagai Anggota<a href="<?= base_url() ?>auth/loginAnggota"> disini!</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>

</html>