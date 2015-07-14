class SpreadTheWord < ActiveRecord::Base
  scope :by_session, ->(session_id) { where session_id: session_id }

  belongs_to :prefill, class_name: 'StwPrefill', foreign_key: 'prefill_id'

  after_validation :prefill_fields, on: [:create]

  private

  def prefill_fields
    self.why_it_matters_to_me = self.prefill.why_it_matters_to_me
    self.what_it_is = self.prefill.what_it_is
    self.why_it_matters_to_them = self.prefill.why_it_matters_to_them
    self.what_im_asking_them_to_do = self.prefill.what_im_asking_them_to_do
  end

end