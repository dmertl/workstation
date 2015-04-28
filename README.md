# workstation

Branch of personal workstation configuration for non-developers. Requires Xcode to be installed.

- Install XCode.
- Edit main.yml and change the user to your username.

Open a terminal and run the following:

    cd ansible
    ./bootstrap.sh
    ansible-playbook main.yml

## Configuration

Configuration settings that are easier set through the applications than Ansible.

### Finder

- Remove All My Files
- New Finder windows show - home
- Open folders in tabs instead of new windows - No
- Sidebar
 - Remove
  - All My Files
  - iCloud Drive
 - Add
  - home
  - Pictures

### Textmate

- Show file browser - Left side
- View - Disable soft wrap
