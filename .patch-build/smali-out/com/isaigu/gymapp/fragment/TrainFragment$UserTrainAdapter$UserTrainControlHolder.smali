.class Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserTrainControlHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field anmo:Landroid/widget/Button;

.field batterView:Lcom/isaigu/gymapp/widget/BatterView;

.field batteryValueTextView:Landroid/widget/TextView;

.field ma:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

.field paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

.field save:Landroid/widget/Button;

.field seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

.field setting:Landroid/widget/Button;

.field signalImage:Landroid/widget/ImageView;

.field startpause:Landroid/widget/Button;

.field stop:Landroid/widget/Button;

.field strenth:Landroid/widget/Button;

.field textViews:[Landroid/widget/TextView;

.field final synthetic this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

.field time:Landroid/widget/TextView;

.field userIcon:Landroid/widget/ImageView;

.field verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

.field waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

.field waveBllTextView:Landroid/widget/TextView;

.field youyang:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v3, 0x1

    .line 1834
    iput-object p1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->this$1:Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;

    .line 1835
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1836
    const v0, 0x7f09018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->strenth:Landroid/widget/Button;

    .line 1837
    const v0, 0x7f090202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->youyang:Landroid/widget/Button;

    .line 1838
    const v0, 0x7f090042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->anmo:Landroid/widget/Button;

    .line 1839
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 1840
    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    .line 1841
    const v0, 0x7f0901ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v5

    .line 1842
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const v0, 0x7f0901ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v3

    .line 1843
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const v0, 0x7f0901f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v6

    .line 1844
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const v0, 0x7f0901f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v7

    .line 1845
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const/4 v2, 0x4

    const v0, 0x7f0901f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v2

    .line 1846
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const/4 v2, 0x5

    const v0, 0x7f0901f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v2

    .line 1847
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const/4 v2, 0x6

    const v0, 0x7f0901f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v2

    .line 1848
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const/4 v2, 0x7

    const v0, 0x7f0901f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v2

    .line 1849
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const/16 v2, 0x8

    const v0, 0x7f0901f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v2

    .line 1850
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->verticalColorSeekBars:[Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    const/16 v2, 0x9

    const v0, 0x7f0901ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;

    aput-object v0, v1, v2

    .line 1851
    const/16 v0, 0xa

    new-array v1, v0, [Landroid/widget/TextView;

    .line 1852
    iput-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    .line 1853
    const v0, 0x7f09019f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 1854
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 1855
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 1856
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const v0, 0x7f0901a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v7

    .line 1857
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const/4 v2, 0x4

    const v0, 0x7f0901a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 1858
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const/4 v2, 0x5

    const v0, 0x7f0901a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 1859
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const/4 v2, 0x6

    const v0, 0x7f0901a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 1860
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const/4 v2, 0x7

    const v0, 0x7f0901a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 1861
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const/16 v2, 0x8

    const v0, 0x7f0901a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 1862
    iget-object v1, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->textViews:[Landroid/widget/TextView;

    const/16 v2, 0x9

    const v0, 0x7f0901a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 1863
    const v0, 0x7f0901ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->userIcon:Landroid/widget/ImageView;

    .line 1864
    const v0, 0x7f090172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->setting:Landroid/widget/Button;

    .line 1865
    const v0, 0x7f0900fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->ma:Landroid/widget/TextView;

    .line 1866
    const v0, 0x7f090073

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->seekBar:Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 1867
    const v0, 0x7f09018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->stop:Landroid/widget/Button;

    .line 1868
    const v0, 0x7f090189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->startpause:Landroid/widget/Button;

    .line 1869
    const v0, 0x7f09015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->save:Landroid/widget/Button;

    .line 1870
    const v0, 0x7f09012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView2;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    .line 1871
    const v0, 0x7f09012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/AmountView2;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    .line 1872
    const v0, 0x7f090107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->name:Landroid/widget/TextView;

    .line 1873
    const v0, 0x7f090033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->address:Landroid/widget/TextView;

    .line 1874
    const v0, 0x7f0901aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->time:Landroid/widget/TextView;

    .line 1875
    const v0, 0x7f0901f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/WaveBallProgress;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBallProgress:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    .line 1876
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountTextPaddingTop(I)V

    .line 1877
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountTextPaddingTop(I)V

    .line 1878
    const v0, 0x7f0901f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->waveBllTextView:Landroid/widget/TextView;

    .line 1879
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 1880
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulsePause:Lcom/isaigu/gymapp/widget/AmountView2;

    iget-object v1, p1, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter;->this$0:Lcom/isaigu/gymapp/fragment/TrainFragment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/fragment/TrainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/AmountView2;->setAmountColor(I)V

    .line 1881
    iget-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->paulseduration:Lcom/isaigu/gymapp/widget/AmountView2;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/AmountView2;->setMinValue(I)V

    .line 1882
    const v0, 0x7f090179

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->signalImage:Landroid/widget/ImageView;

    .line 1883
    const v0, 0x7f090018

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/BatterView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batterView:Lcom/isaigu/gymapp/widget/BatterView;

    .line 1884
    const v0, 0x7f090048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/fragment/TrainFragment$UserTrainAdapter$UserTrainControlHolder;->batteryValueTextView:Landroid/widget/TextView;

    .line 1885
    return-void
.end method
