require "./db/seed_data"

if SeedData.check(GroupType)
  data = [
    {
      id: 1,
      name: 'Open',
      description: "Anyone can see the group, who's in it*, and what members post",
      visible: true,
      leavable: true,
      show_member_list: true
    },
    {
      id: 2,
      name: 'Private',
      description: "Anyone can see the group. Only members see who's in it* and what members post",
      visible: false,
      leavable: true,
      show_member_list: true
    },
    {
      id: 3,
      name: 'Secret',
      description: "Only members see the group, who's in it*, and what members post",
      visible: false,
      leavable: false,
      show_member_list: true
    },
    {
      id: 4,
      name: 'Admin',
      description: "Special completely invisible group used for posting content to all users",
      visible: false,
      leavable: false,
      show_member_list: false
    }
  ]

  SeedData.new(GroupType).load(data)
end