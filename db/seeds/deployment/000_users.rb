require "./db/seed_data"

if SeedData.check(User)
  data = [
    {
      id: 1,
      first_name: 'Admin',
      last_name: 'User',
      email: "admin@example.com",
    },
    {
      first_name: 'Dan',
      last_name: 'Johnson',
      email: "drj3141@gmail.com",
    },
    {
      first_name: 'Mindy',
      last_name: 'Curry',
      email: "somedaynd@gmail.com",
    },
  ]

  SeedData.new(User).load(data)
end