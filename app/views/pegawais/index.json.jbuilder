json.array!(@pegawais) do |pegawai|
  json.extract! pegawai, :id, :nama, :alamat
  json.url pegawai_url(pegawai, format: :json)
end
