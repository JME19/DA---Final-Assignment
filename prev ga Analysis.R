```{r}
ga_results1 <-google_analytics(ga_id,
                               date_range = c("2019-01-01", "2021-11-14"),
                               metrics = c("users","sessions","sessionsPerUser","percentNewSessions"),
                               dimensions = "city",
                               max = -1)
```


```{r}
ga_results1
```
ransactionsPerSession
```{r}
ga_results2 <- google_analytics(ga_id,
                                date_range = c("2019-01-01", "2021-11-14"),
                                metrics = c("users","sessions","sessionsPerUser","percentNewSessions",'transactionsPerSession','revenuePerTransaction'),
                                dimensions = "country",
                                max = -1)
```
```{r}
ga_results1 %>%
  arrange(desc(transactionsPerSession)) %>%
  filter(users>1)
```
```{r}
ga_results2 <- google_analytics(ga_id,
                                date_range = c("2019-01-01", "2021-11-14"),
                                metrics = c("users","sessions","sessionsPerUser","percentNewSessions",'transactionsPerSession','revenuePerTransaction'),
                                dimensions = "country",
                                max = -1)
```

```{r}
ga_results2 %>%
  arrange(desc(transactionsPerSession)) %>%
  filter(users>500)
```
```{r}
ga_results3 <- google_analytics(ga_id,
                                date_range = c("2019-01-01", "2021-11-14"),
                                metrics = c('transactions',"users","sessions","sessionsPerUser","percentNewSessions",'transactionsPerSession','revenuePerTransaction','avgSessionDuration'),
                                dimensions = c("transactionId"),
                                max = -1)
```

```{r}
ga_results3 %>%
  filter(transactionId == 26144)
```
```{r}
ga_results9 <- google_analytics(ga_id,
                                date_range = c("2019-01-01", "2021-11-14"),
                                metrics = c("sessions",'sessionsPerUser',"sessionDuration",'pageviewsPerSession',"bounces","hits",'quantityAddedToCart','transactionRevenue','revenuePerUser', 'transactions'),
                                dimensions = c('socialNetwork','deviceCategory','userAgeBracket','userGender','country'),
                                max = -1,
                                anti_sample = TRUE)
```
```{r}
ga_results9 %>%
  group_by(socialNetwork) %>%
  filter(sessions > 1)
```
```{r}
vars.desc <- c("sessions",'sessionsPerUser',"sessionDuration",'pageviewsPerSession',"bounces","hits",'quantityAddedToCart','transactionRevenue','revenuePerUser', 'transactions')
ggcorr(ga_results9[,vars.desc], label = TRUE, label_size = 3, label_round = 2, label_alpha = TRUE)
```

```{r}
ga_results10 <- google_analytics(ga_id,
                                 date_range = c("2019-01-01", "2021-11-14"),
                                 metrics = c("sessions",'sessionsPerUser',"sessionDuration",'pageviewsPerSession',"bounces","hits",'quantityAddedToCart','transactionRevenue','revenuePerUser', 'transactions'),
                                 dimensions = c('transactionId'),
                                 max = -1,
                                 anti_sample = TRUE)
```
```{r}
ga_results10
```














```{r}
library(ggplot2)
library(GGally)
```
```{r}
vars.desc <- c("users", "sessions", "sessionsPerUser", "percentNewSessions", "transactionsPerSession", "revenuePerTransaction")
ggcorr(ga_results3[,vars.desc], label = TRUE, label_size = 3, label_round = 2, label_alpha = TRUE)
```
```{r}
ga_results7 <- google_analytics(ga_id,
                                date_range = c("2021-01-01", "2021-11-14"),
                                metrics = c('itemQuantity','uniquePurchases','revenuePerItem','itemRevenue','productDetailViews','ProductAddstoCart','sessionDuration'),
                                dimensions = c("transactionId","productSku","productName",'deviceCategory'),
                                max = -1)
```

```{r}
ga_results7
#filter(users>500)
```

'percentNewSessions','sessionsPerUser','sessionDuration','costPerTransaction','transactions','transactionRevenue','revenuePerTransaction','itemRevenue',transactionsPerUser'

Dimensions
'referralPath','fullReferrer','keyword','deviceCategory','dataSource'

```{r}
ga_results4 <- google_analytics(ga_id,
                               date_range = c("2019-01-01", "2021-11-14"),
                               metrics = c('percentNewSessions','sessionsPerUser','sessionDuration','costPerTransaction','transactions','transactionRevenue','revenuePerTransaction','itemRevenue','transactionsPerUser'),
                               dimensions = c('keyword','deviceCategory'),
                                max = -1)
```
```{r}
ga_results4 %>%
  filter(keyword != c("(not provided)","(not set)"))
```



```{r}
ga_results11 <- google_analytics(ga_id,
                                 date_range = c("2019-01-01", "2021-11-15"),
                                 metrics = c('transactionRevenue'),
                                 dimensions = c('transactionId','userGender'),
                                 max = -1)
```
```{r}
ga_results11
```