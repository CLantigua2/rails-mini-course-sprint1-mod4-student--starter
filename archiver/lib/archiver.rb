require "archiver/version"

module Archiver
  # set archived_at to current time
  def archive
    # in ruby when the only value is a hash you don't need curly brackets,
    # I'm leaving them there cos I like them.
    # set this to the current time
    update({ archived_at: Time.now })
  end

  def restore
    # restore to nil
    update({ archived_at: nil})
  end

  def archived?
    # check if archive is not empty
    archived_at.nil?
  end

end
