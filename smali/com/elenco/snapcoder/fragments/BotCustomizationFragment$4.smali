.class Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;
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

.field final synthetic val$yellowSnapButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    iput-object p2, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;->val$yellowSnapButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    iget-object v1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$4;->val$yellowSnapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SetColor(Landroid/view/View;)V

    .line 82
    return-void
.end method
