require "./db/seed_data"

if SeedData.check(Group)
  data = [
    {
      id: 1,
      name: 'Open',
      description: "Anyone can see the group, who's in it*, and what members post",
      group_type_id: 1
    },
    {
      id: 2,
      name: 'Private',
      description: "Anyone can see the group. Only members see who's in it* and what members post",
      group_type_id: 2
    },
    {
      id: 3,
      name: 'Secret',
      description: "Only members see the group, who's in it*, and what members post",
      group_type_id: 3
    },
    {
      id: 4,
      name: 'Admin',
      description: "Special completely invisible group used for posting content to all users",
      group_type_id: 4
    }
  ]

  SeedData.new(Group).load(data)
end