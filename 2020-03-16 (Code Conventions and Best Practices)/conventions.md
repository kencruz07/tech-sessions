## Conventions

### Ruby / Rails
```ruby
class MyClass

  include MySomething

  THE_NUMBER_ONE = 1
  THE_NUMBER_TWO = 2
  THE_NUMBER_THREE = 3


  has_one :one
  has_one :two
  has_one :three

  has_many :fours
  has_many :fives
  has_many :sixes


  validates :one, :presence => true
  validates :two, :uniqueness => true



  def method_one; end

  def method_two
    THE_NUMBER_TWO
  end



  private

  def method_three
    the_number = THE_NUMBER_THREE
    the_string = ''

    if the_number == THE_NUMBER_ONE
      the_string = "I'm one"
    else
      the_string = 'I am three'
    end

    the_string
  end

end
```

### JS
```js
if ( something === 'something' ) {
  var oneVar = 1,
      twoVar = 2,
      threeVar = 3;

  var $oneElement = $('#one');

  if ( someone == 'someone' ) threeVar = '3';
}

function helloWorld (oneVar) {
  if ( oneVar === 1 ) return 'Hello World!';

  return 'Hello World?';
}
```

### Slim / Haml / HTML
```haml
.top-level-container
  .subcontainer
    %ul.my-list
      %li.my-list-item 1
      %li.my-list-item 2
      %li.my-list-item 3

  .subcontainer
    .my-other-list-block
      .my-other-list-item
        .children
          Bacon ipsum dolor amet buffalo beef ribs pancetta kevin drumstick spare ribs kielbasa pastrami chuck pork doner porchetta.

      .my-other-list-item
        .children
          Bacon ipsum dolor amet buffalo beef ribs pancetta kevin drumstick spare ribs kielbasa pastrami chuck pork doner porchetta.

      .my-other-list-item
        .children
          Bacon ipsum dolor amet buffalo beef ribs pancetta kevin drumstick spare ribs kielbasa pastrami chuck pork doner porchetta.
```

## For discussion
1. General rule


for spacing

2. Javascript: to semicolon, or not to semicolon;
3. Javascript: var; var; var; vs multiline, var, declaration;



## Best Practices

### Coding
1. Try to code as readable as possible
2. Properly name variables & methods
   * `is_valid? has_exploded? will_validate?` for methods that expect a boolean?
   * `Record.latest, Record.active, Record.by_user(User)` for scopes
3. Try to keep methods as small as possible
   * Break down into smaller methods
   * Simplify conditions
   * It's name is what it does, nothing more

### Github
1. Properly identify and break down features / tasks. This is to ensure a better and cleaner Github workflow
2. Experiment on Github Projects to see if it can help improve our current workflow (to be discussed by Julius)
3. Squashing & Rebasing (to be discussed by Julius)
4. Re-request review for outdated reviews by code reviewers
5. Make commits as meaningful as possible
6. Use "Refactor code" instead of "Refactors code" (The purpose of this commit is to ----)
