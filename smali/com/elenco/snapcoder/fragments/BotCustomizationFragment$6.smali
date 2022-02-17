.class Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$6;
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


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$6;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment$6;->this$0:Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;

    invoke-virtual {v0}, Lcom/elenco/snapcoder/fragments/BotCustomizationFragment;->SaveName()V

    .line 97
    return-void
.end method
