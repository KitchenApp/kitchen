CREATE  TABLE `Home`.`User` (
  `UserId` INT NOT NULL AUTO_INCREMENT ,
  `Username` VARCHAR(255) NOT NULL ,
  `EmailAddress` VARCHAR(255) NOT NULL ,
  `Password` VARCHAR(255) NOT NULL ,
  PRIMARY KEY (`UserId`) ,
  UNIQUE INDEX `Username_UNIQUE` (`Username`) ,
  UNIQUE INDEX `EmailAddress_UNIQUE` (`EmailAddress`) );
  
CREATE  TABLE `Home`.`UserItem` (
  `UserItemId` BIGINT NOT NULL AUTO_INCREMENT ,
  `UserId` INT NOT NULL ,
  `ItemId` INT NOT NULL ,
  `Cost` DECIMAL(10,4) NOT NULL ,
  `ItemStatusId` INT NOT NULL ,
  `CreateDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `UpdateDate` DATETIME NULL ,
  PRIMARY KEY (`UserItemId`) ,
  INDEX `IX_UserId` (`UserId`) ,
  INDEX `IX_ItemId` (`ItemId`) );
  
CREATE  TABLE `Home`.`UserRecipe` (
  `UserRecipeId` INT NOT NULL AUTO_INCREMENT ,
  `UserId` INT NOT NULL ,
  `RecipeStatusId` INT NOT NULL ,
  `CreateDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `UpdateDate` DATETIME NULL ,
  PRIMARY KEY (`UserRecipeId`) ,
  INDEX `IX_UserId` (`UserId`) );
  
CREATE  TABLE `Home`.`UserRecipeItem` (
  `UserRecipeItemId` INT NOT NULL AUTO_INCREMENT ,
  `UserRecipeId` INT NOT NULL ,
  `UserItemId` BIGINT NOT NULL ,
  `CreateDate` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`UserRecipeItemId`) ,
  INDEX `IX_UserRecipeId` (`UserRecipeId`) ,
  INDEX `IX_UserItemId` (`UserItemId`) );
