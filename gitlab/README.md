After run gitlab image with the script, you need to stop it, and make some changes (file path: /src/gitlab/config/gitlab.rb).
- change "external_url"

    e.g. external_url "http://[ip]"
- change "gitlab_rails['gitlab_shell_ssh_port']"

    e.g. gitlab_rails['gitlab_shell_ssh_port'] = 8822

Use "http://[ip]:8880" to browse the gitlab website.

Use "ssh://git@[ip]:8822/git_path.git" or "http://[ip]:8880/git_path.git" to clone, and ssh is better, because you don't need to input username and password every time.


