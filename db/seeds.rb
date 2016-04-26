# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :email => 'i@rix.li', :password => 'oijoij', :password_confirmation => 'oijoij'

Formula.create([
  {
    user: user,
    title: 'Pythagorean Theorem',
    expression: 'a^2+b^2=c^2',
    content: 'In mathematics, the Pythagorean theorem, also known as Pythagoras\' theorem, is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. The theorem can be written as an equation relating the lengths of the sides $a$, $b$ and $c$, often called the "Pythagorean equation":

$a^2 + b^2 = c^2$,

where $c$ represents the length of the hypotenuse and $a$ and $b$ the lengths of the triangle\'s other two sides.

Although it is often argued that knowledge of the theorem predates him, the theorem is named after the ancient Greek mathematician Pythagoras (c. 570 – c. 495 BC) as it is he who, by tradition, is credited with its first recorded proof. There is some evidence that Babylonian mathematicians understood the formula, although little of it indicates an application within a mathematical framework. Mesopotamian, Indian and Chinese mathematicians all discovered the theorem independently and, in some cases, provided proofs for special cases.

The theorem has been given numerous proofs – possibly the most for any mathematical theorem. They are very diverse, including both geometric proofs and algebraic proofs, with some dating back thousands of years. The theorem can be generalized in various ways, including higher-dimensional spaces, to spaces that are not Euclidean, to objects that are not right triangles, and indeed, to objects that are not triangles at all, but $n$-dimensional solids. The Pythagorean theorem has attracted interest outside mathematics as a symbol of mathematical abstruseness, mystique, or intellectual power; popular references in literature, plays, musicals, songs, stamps and cartoons abound.'
  },
  {
    user: user,
    title: 'Euler\'s Theorem',
    expression: 'a^{\varphi (n)} \equiv 1 \pmod{n}',
    content: 'In number theory, **Euler\'s theorem** (also known as the **Fermat–Euler theorem** or **Euler\'s totient theorem**) states that if $n$ and a are coprime positive integers, then

$a^{\varphi (n)} \equiv 1 \pmod{n}$

where $\varphi (n)$ is **Euler\'s totient function**. (The notation is explained in the article [Modular arithmetic][1].) In 1736, Leonhard Euler published his proof of Fermat\'s little theorem, which Fermat had presented without proof. Subsequently, Euler presented other proofs of the theorem, culminating with &quot;Euler\'s theorem&quot; in his paper of 1763, in which he attempted to find the smallest exponent for which Fermat\'s little theorem was always true.

The converse of Euler\'s theorem is also true: if the above congruence is true, then $a$ and $n$ must be coprime.

The theorem is a generalization of **Fermat\'s little theorem**, and is further generalized by **Carmichael\'s theorem**.

The theorem may be used to easily reduce large powers modulo $n$. For example, consider finding the ones place decimal digit of 7222, i.e. $7222 \pmod{10}$. Note that 7 and 10 are coprime, and $\varphi (10) = 4$. So Euler\'s theorem yields $7^4 \equiv 1 \pmod{10}$, and we get $7^{222} \equiv 7^{4 \times 55 + 2} \equiv (7^4)^{55} \times 7^2 \equiv 1^{55} \times 7^2 \equiv 49 \equiv 9 \pmod{10}$.

Note that if $a^{\varphi (n)} \equiv 1 \pmod{n}$, then also $(a^{\varphi (n)})^k \equiv 1 \pmod{n}$ for any positive $k$, because of

$(a^{\varphi (n)})^k  \equiv  (a^{\varphi (n)}\,\bmod\,n  \cdot\,(a^{\varphi (n)})^{k-1}\,\bmod\,n ) \equiv (a^{\varphi (n)})^{k-1}\pmod{n}$  and so on.

In general, when reducing a power of a modulo $n$ (where $a$ and $n$ are coprime), one needs to work modulo $\varphi (n)$ in the exponent of $a$:

if $x \equiv y \pmod{\varphi (n)}$, then $a^x \equiv a^y \pmod{n}$.

Euler\'s theorem also forms the basis of the **RSA encryption system**, where the net result of first encrypting a plaintext message, then later decrypting it, amounts to exponentiating a large input number by $k\varphi (n) + 1$, for some positive integer $k$. Euler\'s theorem then guarantees that the decrypted output number is equal to the original input number, giving back the plaintext.

[1]: https://en.wikipedia.org/wiki/Modular_arithmetic'
  }
])
