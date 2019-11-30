After run gitlab image with the script, you need to stop it, and make some changes (file path: /src/gitlab/config/gitlab.rb).
- change "external_url"

    e.g. external_url "http://116.196.65.235"
- change "gitlab_rails['gitlab_shell_ssh_port']"

    e.g. gitlab_rails['gitlab_shell_ssh_port'] = 8822

Use "http://116.196.65.235:8880" to browse the gitlab website.

Use "ssh://git@116.196.65.235:8822/csh/config.git" or "http://116.196.65.235:8880/csh/config.git" to clone, and ssh is better, because you don't need to input username and password when using ssh.


