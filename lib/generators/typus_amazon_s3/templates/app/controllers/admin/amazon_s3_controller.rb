# Controller generated by the `typus_amazon_s3` generator.
class Admin::AmazonS3Controller < TypusController

  before_filter :connect_to_s3
  after_filter :disconnect_from_s3

  def index
  end

  def new
  end

  def create
    AWS::S3::Bucket.create(params[:bucket][:name])
    flash[:notice] = 'Bucket was successfully created.'
    redirect_to admin_amazon_s3_url(params[:bucket][:name])
  rescue Exception => e
    flash[:notice] = e.message
    redirect_to :back
  end

  def show
    @bucket = AWS::S3::Bucket.find(params[:id])
    @files = @bucket.objects
  end

  def destroy
    AWS::S3::Bucket.find(params[:id]).delete_all
    AWS::S3::Bucket.delete(params[:id])
    flash[:notice] = 'Bucket was successfully removed.'
    redirect_to admin_amazon_s3_index_path
  end

  def remove_all_files
    AWS::S3::Bucket.find(params[:id]).delete_all
    flash[:notice] = 'All files removed from bucket.'
    redirect_to :back
  rescue Exception => e
    flash[:error] = e.message
    redirect_to amazon_s3_path
  end

  def grant
    policy = AWS::S3::Bucket.acl(params[:id])
    case params[:acl]
    when 'public'
      policy.grants << AWS::S3::ACL::Grant.grant(:public_read)
      policy.grants << AWS::S3::ACL::Grant.grant(:public_read_acp)
    when 'private'
      policy.grants.delete(AWS::S3::ACL::Grant.grant(:public_read))
      policy.grants.delete(AWS::S3::ACL::Grant.grant(:public_read_acp))
    end
    AWS::S3::Bucket.acl(params[:id], policy)
    flash[:notice] = "Bucket <strong>#{params[:id]}</strong> now is #{params[:acl]}."
    redirect_to :back
  rescue Exception => e
    flash[:error] = e.message
    redirect_to admin_dashboard_path
  end

  def upload_file
    if params[:file].nil?
      flash[:error] = 'Please, specify the file you want to upload.'
    else
      file = params[:file].original_filename.to_s
      if AWS::S3::S3Object.exists?(file, params[:id])
        flash[:error] = "A file named <strong>#{file}</strong> already exists on this bucket."
      else
        AWS::S3::S3Object.store(file, params[:file].read, params[:id])
        flash[:notice] = "<strong>#{file}</strong> successfully uploaded."
      end
    end
    redirect_to :back
  rescue Exception => e
    render :text => e.message
  end

  def delete_file
    AWS::S3::S3Object.delete(params[:file_id], params[:id])
    AWS::S3::Bucket.find(params[:id]).objects(:reload)
    flash[:notice] = "<strong>#{params[:file_id].split("#{params[:folder]}/")[-1]}</strong> removed from AmazonS3."
    redirect_to :back
  rescue Exception => e
    flash[:error] = e.message
    redirect_to admin_dashboard_path
  end

  def grant_to_file
    policy = AWS::S3::S3Object.acl(params[:file_id], params[:id])
    case params[:acl]
    when 'public'
      policy.grants << AWS::S3::ACL::Grant.grant(:public_read)
    when "private"
      policy.grants.delete(AWS::S3::ACL::Grant.grant(:public_read))
    end
    AWS::S3::S3Object.acl(params[:file_id], params[:id], policy)
    flash[:notice] = "<strong>#{params[:file_id].split("#{params[:folder]}/")[-1]}</strong> is now #{params[:acl]}."
    redirect_to :back
  rescue
    flash[:error] = "Error when making <strong>#{params[:file_id]}</strong> #{params[:acl]}."
    redirect_to admin_dashboard_path
  end

  # Action that sends an email with a link to the file that expires in 3 days.
  def share_file
    if request.post?
      if !params[:email][:recipients].empty?
        @url = AWS::S3::S3Object.url_for(params[:file_id], params[:id], :expires_in => (60*60*24*3), :use_ssl => true)
        TypusMailer.deliver_file(params[:email][:recipients], params[:email][:subject], params[:email][:body], @url, params[:file_id])
        flash[:notice] = 'E-Mail successfully sent.'
        redirect_to :back
      else
        flash[:notice] = 'Recipient is required.'
        render :action => 'share_file'
      end
    end
  end

  def edit_file
    if request.post?
      unless params[:file_id] == params[:new_filename]
        AWS::S3::S3Object.rename(params[:file_id], params[:new_filename], params[:id])
        AWS::S3::Bucket.find(params[:id]).objects(:reload)
        flash[:notice] = 'File was successfully renamed.'
      end
      redirect_to admin_amazon_s3_path(params[:id])
    end
  end

  private

  def connect_to_s3
    AWS::S3::Base.establish_connection!(:access_key_id => TYPUS_AWS_S3[:access_key_id], 
                                        :secret_access_key => TYPUS_AWS_S3[:secret_access_key], 
                                        :persistent => TYPUS_AWS_S3[:aws_s3_persistent])
    @buckets = AWS::S3::Service.buckets(:reload)
  end

  def disconnect_from_s3
    AWS::S3::Base.disconnect!
  end

end