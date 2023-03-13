<div align="center">

<hr style="color:transparent" />
<a href='https://rstudio.github.io/juicyjuice/'><img src="man/figures/logo.png" width="350px"/></a>
<hr style="color:transparent"/>
<!-- badges: start -->
<a href="https://cran.r-project.org/package=juicyjuice"><img src="https://www.r-pkg.org/badges/version/juicyjuice" alt="CRAN status" /></a>
<a href="https://github.com/rstudio/juicyjuice/actions"><img src="https://github.com/rstudio/juicyjuice/workflows/R-CMD-check/badge.svg" alt="R build status" /></a>
<a href="https://github.com/rstudio/juicyjuice/actions"><img src="https://github.com/rstudio/juicyjuice/workflows/lint/badge.svg" alt="Linting" /></a>

<a href="https://CRAN.R-project.org/package=juicyjuice"><img src="https://cranlogs.r-pkg.org/badges/juicyjuice" alt="Monthly Downloads"></a>
<a href="https://CRAN.R-project.org/package=juicyjuice"><img src="https://cranlogs.r-pkg.org/badges/grand-total/juicyjuice" alt="Total Downloads"></a>

<a href="https://www.contributor-covenant.org/version/2/1/code_of_conduct.html"><img src="https://img.shields.io/badge/Contributor%20Covenant-v2.1%20adopted-ff69b4.svg" alt="Contributor Covenant" /></a>
<!-- badges: end -->
<hr style="color:transparent" />
<br />
</div>

With the **juicyjuice** package it’s fairly easy to transform HTML such that all CSS is inlined directly into HTML tags.

So this:

`<style>div{color:blue;}</style><div/>`

Will turn to this:

`<div style="color: blue;"></div>`

Why do this? An important use case is HTML email and this is mainly because of Outlook on Windows (it does not support multiple classes on elements). Furthermore CSS inlining can help preserve a decent layout in email clients that do not support embedded CSS (in `<style>` tags), or, when an email is forwarded. Here's another reason to use this: embedding HTML in 3rd-party websites. 

This **R** package contains a single function, `css_inline()`, where the only input required is a string of HTML text. It uses the **juice** JavaScript library (https://github.com/Automattic/juice), which is (1) well-tested, (2) very performant, and (3) has lots of great features. The aformentioned function will return a string of CSS-inlined HTML.

## INSTALLATION

The **juicyjuice** package can be installed from **CRAN** with:

``` r
install.packages("juicyjuice")
```

You can also choose to install the development version of **juicyjuice** from
**GitHub**:

``` r
devtools::install_github("rstudio/juicyjuice")
```

If you encounter a bug, have usage questions, or want to share ideas to
make this package better, please feel free to file an
[issue](https://github.com/rstudio/juicyjuice/issues).

## Code of Conduct

Please note that the juicyjuice project is released with a [contributor code of conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct.html).<br>By participating in this project you agree to abide by its terms.

## 📄 License

**juicyjuice** is licensed under the MIT license. See the `LICENSE.md`](LICENSE.md) file for more details.

© Posit Software, PBC.

## 🏛️ Governance

This project is primarily maintained by [Rich Iannone](https://twitter.com/riannone). Should there also be other authors, they might occasionally assist with some of these duties.
