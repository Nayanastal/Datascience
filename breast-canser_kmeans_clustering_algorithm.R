set.seed(100)
wisc_bc_data <- read.csv("C:/Users/Admin/Desktop/DataScience/wisc_bc_data.csv")
wisc_bc_data2 <- wisc_bc_data
wisc_bc_data2$id <- NULL
wisc_bc_data2$diagnosis <- NULL
wisc_bc_data_clusters <- kmeans(wisc_bc_data2, 2)
print(wisc_bc_data_clusters)

print(table(wisc_bc_data$diagnosis, wisc_bc_data_clusters$cluster))
----------------------------------------------------------------------------------------------------------------------------------------------

K-means clustering with 2 clusters of sizes 438, 131

Cluster means:
  radius_mean texture_mean perimeter_mean area_mean smoothness_mean
1    12.55630     18.57037       81.12347  496.0619       0.0948845
2    19.37992     21.69458      128.23130 1185.9298       0.1012946
  compactness_mean concavity_mean concave.points_mean symmetry_mean
1       0.09109982     0.06243776          0.03343254     0.1780580
2       0.14861298     0.17693947          0.10069878     0.1915397
  fractal_dimension_mean radius_se texture_se perimeter_se  area_se
1             0.06345402 0.3041909   1.215153     2.152881 23.78529
2             0.06060290 0.7428038   1.222538     5.250580 95.67817
  smoothness_se compactness_se concavity_se concave.points_se symmetry_se
1   0.007173263     0.02347469   0.02874551        0.01063632  0.02061358
2   0.006598687     0.03217669   0.04241977        0.01567398  0.02030397
  fractal_dimension_se radius_worst texture_worst perimeter_worst area_worst
1          0.003747503     14.04390      24.70954        91.93751   619.6479
2          0.003953389     23.70947      28.91267       158.49618  1753.0229
  smoothness_worst compactness_worst concavity_worst concave.points_worst
1        0.1299591         0.2233118       0.2192149           0.09132984
2        0.1404247         0.3577577       0.4493061           0.19243107
  symmetry_worst fractal_dimension_worst
1      0.2835537              0.08328194
2      0.3118817              0.08616550

Clustering vector:
  [1] 2 2 2 1 2 1 2 1 1 1 1 2 2 1 1 1 1 2 2 1 1 1 1 2 2 2 1 2 2 2 2 1 2 2 2 2 1
 [38] 1 1 1 1 1 2 1 1 2 1 1 1 1 1 1 1 2 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 2 1
 [75] 1 2 1 2 2 1 1 1 2 2 1 2 1 2 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1
[112] 1 1 1 1 1 1 1 2 2 1 2 2 1 1 1 1 2 1 2 1 1 1 1 2 1 1 1 1 1 1 2 1 1 1 1 1 1
[149] 1 1 1 1 1 1 1 1 2 1 1 1 1 2 2 1 2 1 1 2 2 1 1 1 1 1 1 1 1 1 1 1 2 2 2 1 1
[186] 1 2 1 1 1 1 1 1 1 1 1 1 2 2 1 1 2 2 1 1 1 1 2 1 1 2 1 2 1 1 1 1 1 2 2 1 1
[223] 1 1 1 1 1 1 1 1 2 1 1 2 1 1 2 2 1 2 1 1 1 1 2 1 1 1 1 1 2 1 2 2 2 1 2 1 2
[260] 1 2 2 2 1 2 2 1 1 1 1 1 1 2 1 2 1 1 2 1 1 2 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1
[297] 1 1 1 1 2 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 1 2 1 2 1 1 1 1 1 1 1 1 1
[334] 1 1 2 1 2 1 2 1 1 1 2 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 2 2 1 2 2
[371] 1 1 2 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 1 1 2 2 1 1 1 1 1 1 2 1 1 1 1 1 1
[408] 1 2 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 1 1 1 1 1 1 1 2 1 1
[445] 2 1 2 1 1 2 1 2 1 1 1 1 1 1 1 1 2 2 1 1 1 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1
[482] 1 1 1 1 1 1 2 1 1 1 2 2 1 1 1 1 1 2 2 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 2 2
[519] 1 1 1 2 1 1 1 1 1 1 1 1 1 1 1 2 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
[556] 1 1 1 1 1 1 1 1 2 2 2 1 2 1

Within cluster sum of squares by cluster:
[1] 28559677 49383423
 (between_SS / total_SS =  69.6 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss"
[6] "betweenss"    "size"         "iter"         "ifault"      
> print(table(wisc_bc_data$diagnosis, wisc_bc_data_clusters$cluster))
   
      1   2
  B 356   1
  M  82 130
> 
