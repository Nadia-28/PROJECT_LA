ALTER TABLE laporan_bulanan
ADD COLUMN data_bulanan JSON DEFAULT NULL after tahun;

UPDATE laporan_bulanan
SET data_bulanan = JSON_OBJECT(
  'jan', jan,
  'feb', feb,
  'mar', mar,
  'apr', apr,
  'mei', mei,
  'jun', jun,
  'jul', jul,
  'agt', agt,
  'sep', sep,
  'okt', okt,
  'nov', nov,
  'des', des
);

ALTER TABLE laporan_bulanan
DROP COLUMN jan,
DROP COLUMN feb,
DROP COLUMN mar,
DROP COLUMN apr,
DROP COLUMN mei,
DROP COLUMN jun,
DROP COLUMN jul,
DROP COLUMN agt,
DROP COLUMN sep,
DROP COLUMN okt,
DROP COLUMN nov,
DROP COLUMN des;

ALTER TABLE laporan_triwulan
ADD COLUMN data_triwulan JSON DEFAULT NULL AFTER tahun;

UPDATE laporan_triwulan
SET data_triwulan = JSON_OBJECT(
  'triwulan_1', triwulan_satu,
  'triwulan_2', triwulan_dua,
  'triwulan_3', triwulan_tiga,
  'triwulan_4', triwulan_empat
);

ALTER TABLE laporan_triwulan
DROP COLUMN triwulan_satu,
DROP COLUMN triwulan_dua,
DROP COLUMN triwulan_tiga,
DROP COLUMN triwulan_empat;

ALTER TABLE laporan_subron
ADD COLUMN data_subron JSON DEFAULT NULL AFTER `tahun`;

UPDATE laporan_subron
SET data_subron = JSON_OBJECT(
  'subron_1', subron_satu,
  'subron_2', subron_dua,
  'subron_3', subron_tiga
);

ALTER TABLE laporan_subron
DROP COLUMN subron_satu,
DROP COLUMN subron_dua,
DROP COLUMN subron_tiga;
