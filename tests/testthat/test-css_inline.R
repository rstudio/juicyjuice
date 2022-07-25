test_that("Basic CSS inlining works", {

  css_inline("<style>div{color:red;}</style><div/>") %>%
    expect_equal("<div style=\"color: red;\"></div>")
})
