class IssueService
  def self.create_issue(controller, problem, user)
    binding.pry
    issue = Issue.new(problem: problem, user: user)
    issue.body = controller.render_to_string(*issue.render_body_args)
    issue.save
    
    issue
  end
end