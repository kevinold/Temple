module Admin::AmazonS3Helper

  def fmt_date(date)
    date.strftime("%d.%m.%Y")
  end

  def get_extension(filename)
    extension = filename.downcase.to_s.split(".")[-1]
    case extension
      when 'jpg', 'jpeg', 'psd', 'png', 'ai', 'fh10', 'fh11' then extension = "image"
      when 'pdf', 'doc', 'txt', 'rtf' then extension = "document"
      when 'xls' then extension = "spreadsheet"
      when 'ppt' then extension = "keynote"
      when 'gz', 'zip', 'rar', 'tar.gz' then extension = "package"
      else extension = "unknown"
    end
    return extension
  end

  def hide_extension(filename)
    filename_splitted = filename.to_s.split(".")
    case filename_splitted[-1]
      when 'conf', 'html', 'rb', 'xml' then filename = filename
      else filename = filename_splitted[0]
    end
    return filename
  end

end