CREATE TABLE [dbo].[products] (
    [Id]          INT          NOT NULL,
    [productName] VARCHAR (50) NOT NULL,
    [categoryId] INT NOT NULL, 
    [categoryName] VARCHAR(30) NOT NULL, 
    [description] VARCHAR(250) NOT NULL, 
    [inventoryAmount] INT CHECK ([inventoryAmount] >= 0) NOT NULL, 
    [cost] NUMERIC NOT NULL, 
    [price] MONEY NOT NULL, 
    [weight] FLOAT NOT NULL, 
    [image] IMAGE NOT NULL, 
    [thumbnail] IMAGE NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC) 
);



