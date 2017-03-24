class Entity
{
    [string] $Id
}

enum LinkRelation
{
    Twitter
    Blog
    Contact
    Code
    Slide
    Video
    Habr
}

class Link
{
    [LinkRelation] $Relation
    [Uri] $Url
}

class Speaker : Entity
{
    [string] $Name
    [Uri] $CompanyName
    [Uri] $CompanyUrl
    [string] $Description
    [Link[]] $Links
}

class Talk : Entity
{
    [string[]] $SpeakerIds
    [string] $Title
    [string] $Description
    [Link[]] $Links
}

class Friend: Entity
{
    [string] $Name
    [Uri] $Url
    [string] $Description
}

class Venue : Entity
{
    [string] $Name
    [string] $Address
    [Uri] $MapUrl
}

class Meetup : Entity
{
    [int] $Number
    [DateTime] $Date
    [string[]] $FriendIds
    [string] $VenueId
    [string[]] $TalkIds
}
