<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Laporan Setoran Simpanan</strong>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                            <form action="<?= base_url() ?>simpanan/filterLaporanSetoran" method="POST">
                                    <label class=" form-control-label">Tanggal Awal</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input type="date" name="startDate" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class=" form-control-label">Tanggal Akhir</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input type="date" name="endDate" class="form-control" required>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <button type="submit" name="submit" class="btn btn-success btn-sm"><i class="fa fa-search"></i> Filter</button>
                            </form>
                            <?php
                            if (!empty($startDate)) {
                            ?>
                                <form action="<?= base_url() ?>simpanan/filterCetakSimpanan" method="POST" target="_blank" style="display: inline-block;">
                                    <input type="hidden" name="startDate" value="<?= $startDate ?>">
                                    <input type="hidden" name="endDate" value="<?= $endDate ?>">
                                    <button class="btn btn-primary btn-sm"><i class="fa fa-print"></i> Cetak Filter Data</button>
                                </form>
                            <?php
                            } else {
                            ?>

                                <a href="<?= base_url() ?>simpanan/cetakTransaksiSimpanan" target="_blank" class="btn btn-primary btn-sm"><i class="fa fa-print"></i> Cetak Semua Data</a>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table id="bootstrap-data-table-export" class="table table-striped table-bordered table-responsive-lg">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Penyetor</th>
                                <th>Tanggal Setor Tunai</th>
                                <th>Jumlah Setoran Tunai</th>
                                <th>Nama Teller</th>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($data_setoran as $item) { ?>
                                <tr>
                                    <td><?= $no ?></td>
                                    <td><?= $item['nama_anggota'] ?></td>
                                    <td><?= date("d-m-Y", strtotime($item['tanggal_setor_tunai'])) ?></td>
                                    <td><?= $item['jumlah_setor_tunai'] ?></td>
                                    <td><?= $item['nama_pegawai'] ?></td>
                                </tr>
                            <?php
                                $no++;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div><!-- .animated -->
</div><!-- .content -->