# Imagine you're creating an incredible web app to send out a birthday greeting on
# each student's birthday. While building this, you realize you accidentally
# stored your birthdate data as a `string`. It would be much easier to work with
# if the column type was `datetime` instead. Let's fix that.

# Finally, we will change a column type, `string` to `datetime`. Same as before,
# you'll have to *create another migration file*. This time call it
# `03_change_datatype_for_birthdate.rb`. Once again, name the class the same name
# as the file but with capital letters instead of underscores:
# `ChangeDatatypeForBirthdate`.

# This migration will have the same setup as the last. Be sure to use the
# `change_column` method. It takes three necessary arguments:
# `change_column(table_name, column_name, type)`.

class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]
    def change
        change_column :students, :birthdate, :datetime
    end

end