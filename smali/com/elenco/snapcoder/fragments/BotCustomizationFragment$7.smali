.class Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;
.super Ljava/lang/Object;
.source "BotCustomizationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

.field final synthetic val$instructionView:Landroid/widget/RelativeLayout;

.field final synthetic val$showAgainCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->val$instructionView:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->val$showAgainCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->val$instructionView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->val$showAgainCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->access$000(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    move-result-object v1

    const-string v2, "False"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->setShowAgain(Ljava/lang/String;)V

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->access$100(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;->getDoNotShowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    .line 152
    .local v0, "test":Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;
    invoke-virtual {v0}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getLocationName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BotCustomization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-static {v2}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->access$000(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->getShowAgain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->setShowAgain(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-static {v2}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->access$100(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/elenco/snapcoder/SQLite/data/repo/DoNotShowRepo;->update(Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;)I

    goto :goto_1

    .line 147
    .end local v0    # "test":Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;
    :cond_1
    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$7;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-static {v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->access$000(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;

    move-result-object v1

    const-string v2, "True"

    invoke-virtual {v1, v2}, Lcom/elenco/snapcoder/SQLite/data/model/DoNotShow;->setShowAgain(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    return-void
.end method
