﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Golestan.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class GolestanShohadaEntities : DbContext
    {
        public GolestanShohadaEntities()
            : base("name=GolestanShohadaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AfzoodaneEtelaat> AfzoodaneEtelaats { get; set; }
        public virtual DbSet<Ghate> Ghates { get; set; }
        public virtual DbSet<Maghbare> Maghbares { get; set; }
        public virtual DbSet<Mantaghe> Mantaghes { get; set; }
        public virtual DbSet<MatalebEzafe> MatalebEzafes { get; set; }
        public virtual DbSet<Mogheyat> Mogheyats { get; set; }
        public virtual DbSet<Niroo> Niroos { get; set; }
        public virtual DbSet<NoeMatlab> NoeMatlabs { get; set; }
        public virtual DbSet<NoeRabete> NoeRabetes { get; set; }
        public virtual DbSet<NoghteAsar> NoghteAsars { get; set; }
        public virtual DbSet<Ostan> Ostans { get; set; }
        public virtual DbSet<Raste> Rastes { get; set; }
        public virtual DbSet<ShahidRabete> ShahidRabetes { get; set; }
        public virtual DbSet<Vahed> Vaheds { get; set; }
        public virtual DbSet<Vaziat> Vaziats { get; set; }
        public virtual DbSet<Yegan> Yegans { get; set; }
        public virtual DbSet<ViewNirooVahed> ViewNirooVaheds { get; set; }
        public virtual DbSet<Shahid> Shahids { get; set; }
        public virtual DbSet<Amaliat> Amaliats { get; set; }
        public virtual DbSet<ViewShahidRabete> ViewShahidRabetes { get; set; }
        public virtual DbSet<Bakhsh> Bakhshes { get; set; }
        public virtual DbSet<NirooYeganVahedAmaliat> NirooYeganVahedAmaliats { get; set; }
        public virtual DbSet<ShahidAmaliat> ShahidAmaliats { get; set; }
        public virtual DbSet<Shahrestan> Shahrestans { get; set; }
        public virtual DbSet<ViewShahidAshena> ViewShahidAshenas { get; set; }
        public virtual DbSet<Ashnayan> Ashnayans { get; set; }
        public virtual DbSet<ViewShahid> ViewShahids { get; set; }
        public virtual DbSet<ViewShahidMatalebEzafe> ViewShahidMatalebEzafes { get; set; }
        public virtual DbSet<ViewShahidAmaliat> ViewShahidAmaliats { get; set; }
        public virtual DbSet<ViewAttach> ViewAttaches { get; set; }
        public virtual DbSet<ViewAmaliat> ViewAmaliats { get; set; }
        public virtual DbSet<ViewAmaliatMantaghe> ViewAmaliatMantaghes { get; set; }
    
        public virtual ObjectResult<ViewShahid> sp_SearchSahid(string whereParameter)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahid>("sp_SearchSahid", whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahid> sp_SearchSahid(string whereParameter, MergeOption mergeOption)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahid>("sp_SearchSahid", mergeOption, whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahid> sp_SearchShahidByQuery(string query)
        {
            var queryParameter = query != null ?
                new ObjectParameter("query", query) :
                new ObjectParameter("query", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahid>("sp_SearchShahidByQuery", queryParameter);
        }
    
        public virtual ObjectResult<ViewShahid> sp_SearchShahidByQuery(string query, MergeOption mergeOption)
        {
            var queryParameter = query != null ?
                new ObjectParameter("query", query) :
                new ObjectParameter("query", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahid>("sp_SearchShahidByQuery", mergeOption, queryParameter);
        }
    
        public virtual ObjectResult<ViewShahidAmaliat> sp_SearchShahidAmaliat(string whereParameter)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahidAmaliat>("sp_SearchShahidAmaliat", whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahidAmaliat> sp_SearchShahidAmaliat(string whereParameter, MergeOption mergeOption)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahidAmaliat>("sp_SearchShahidAmaliat", mergeOption, whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahidAshena> sp_GetShahidAshena(string whereParameter)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahidAshena>("sp_GetShahidAshena", whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahidAshena> sp_GetShahidAshena(string whereParameter, MergeOption mergeOption)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahidAshena>("sp_GetShahidAshena", mergeOption, whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahidMatalebEzafe> sp_GetShahidMatalebEzafe(string whereParameter)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahidMatalebEzafe>("sp_GetShahidMatalebEzafe", whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewShahidMatalebEzafe> sp_GetShahidMatalebEzafe(string whereParameter, MergeOption mergeOption)
        {
            var whereParameterParameter = whereParameter != null ?
                new ObjectParameter("WhereParameter", whereParameter) :
                new ObjectParameter("WhereParameter", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewShahidMatalebEzafe>("sp_GetShahidMatalebEzafe", mergeOption, whereParameterParameter);
        }
    
        public virtual ObjectResult<ViewAttach> sp_SearchAttachment(Nullable<int> iDShahid, Nullable<int> iDAmaliat)
        {
            var iDShahidParameter = iDShahid.HasValue ?
                new ObjectParameter("IDShahid", iDShahid) :
                new ObjectParameter("IDShahid", typeof(int));
    
            var iDAmaliatParameter = iDAmaliat.HasValue ?
                new ObjectParameter("IDAmaliat", iDAmaliat) :
                new ObjectParameter("IDAmaliat", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewAttach>("sp_SearchAttachment", iDShahidParameter, iDAmaliatParameter);
        }
    
        public virtual ObjectResult<ViewAttach> sp_SearchAttachment(Nullable<int> iDShahid, Nullable<int> iDAmaliat, MergeOption mergeOption)
        {
            var iDShahidParameter = iDShahid.HasValue ?
                new ObjectParameter("IDShahid", iDShahid) :
                new ObjectParameter("IDShahid", typeof(int));
    
            var iDAmaliatParameter = iDAmaliat.HasValue ?
                new ObjectParameter("IDAmaliat", iDAmaliat) :
                new ObjectParameter("IDAmaliat", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewAttach>("sp_SearchAttachment", mergeOption, iDShahidParameter, iDAmaliatParameter);
        }
    
        public virtual ObjectResult<Amaliat> GetTheNearestAmaliat()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Amaliat>("GetTheNearestAmaliat");
        }
    
        public virtual ObjectResult<Amaliat> GetTheNearestAmaliat(MergeOption mergeOption)
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Amaliat>("GetTheNearestAmaliat", mergeOption);
        }
    
        public virtual ObjectResult<ViewAmaliat> sp_SearchAmaliatByQuery(string query)
        {
            var queryParameter = query != null ?
                new ObjectParameter("query", query) :
                new ObjectParameter("query", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewAmaliat>("sp_SearchAmaliatByQuery", queryParameter);
        }
    
        public virtual ObjectResult<ViewAmaliat> sp_SearchAmaliatByQuery(string query, MergeOption mergeOption)
        {
            var queryParameter = query != null ?
                new ObjectParameter("query", query) :
                new ObjectParameter("query", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewAmaliat>("sp_SearchAmaliatByQuery", mergeOption, queryParameter);
        }
    
        public virtual ObjectResult<ViewAmaliatMantaghe> sp_GetAmaliatNoghteAsarByIdAmaliat(Nullable<int> iDAmaliat)
        {
            var iDAmaliatParameter = iDAmaliat.HasValue ?
                new ObjectParameter("IDAmaliat", iDAmaliat) :
                new ObjectParameter("IDAmaliat", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewAmaliatMantaghe>("sp_GetAmaliatNoghteAsarByIdAmaliat", iDAmaliatParameter);
        }
    
        public virtual ObjectResult<ViewAmaliatMantaghe> sp_GetAmaliatNoghteAsarByIdAmaliat(Nullable<int> iDAmaliat, MergeOption mergeOption)
        {
            var iDAmaliatParameter = iDAmaliat.HasValue ?
                new ObjectParameter("IDAmaliat", iDAmaliat) :
                new ObjectParameter("IDAmaliat", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ViewAmaliatMantaghe>("sp_GetAmaliatNoghteAsarByIdAmaliat", mergeOption, iDAmaliatParameter);
        }
    }
}
