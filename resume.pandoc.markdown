$for(header-includes)$
$header-includes$
$endfor$
$for(include-before)$
$include-before$
$endfor$

$firstname$ $lastname$
===========

> (email: $email$ - phone: $phone$)


SUMMARY
-------

$summary$


EXPERIENCE
----------

$for(experience)$

**$experience.title$**
$experience.employer$$if(experience.city)$ ($experience.city$)$endif$ *$experience.dates$*

$for(experience.description)$
- $experience.description$
$endfor$
$endfor$


EDUCATION
----------

$for(education)$

**$education.degree$**
$education.institution$$if(education.city)$ ($education.city$)$endif$ *$education.dates$*

$for(education.description)$
- $education.description$
$endfor$
$endfor$

$if(skills)$
SKILLS
------

$for(skills)$
- $skills.name$: $skills.description$
$endfor$
$endif$

$if(interests)$
INTERESTS
---------

$interests$
$endif$

$if(references)$
REFERENCES
----------

$references$
$endif$


CONTACT INFORMATION
-------------------

- phone: $phone$
- email: $email$
$if(homepage)$- website: http://$homepage$$endif$
$if(linkedin)$- LinkedIn: https://www.linkedin.com/in/$linkedin$$endif$
$if(github)$- GitHub: https://github.com/$github$$endif$
$if(twitter)$- Twitter: $twitter$$endif$


$for(include-after)$
$include-after$
$endfor$









