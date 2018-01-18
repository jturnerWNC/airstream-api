# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tasks = Task.create!([
    {
      title: 'Raise stabilizers',
      description: 'Use the tool located in the locker to spin the 4 specific bolts near each tire in order to raise 
                    the stabilizers.'
    },
    {
      title: 'Place hitch on the BlueOx',
      description: 'Back the truck up until the hitch is directly underneath the receiver and use the electric motor
                    in order to lower the trailer down into position. Once here, flip the lock and ensure you can place
                    the padlock through the hold in the flip lock.'
    },
    {
      title: 'Ensure hitch is seated properly',
      description: 'Raise the receiver with the electric motor to raise the bed of the truck into the air to ensure
                    the trailer hitch in indeed seated.'
    },
    {
      title: 'Finish hitch work',
      description: 'Raise the pedastal until it will not raise any further and place the pigtail electrical connector
                    so you can then test the brake lights. Next, criscross the security chains and attach them to the 
                    underside of the truck.'
    }
  ])