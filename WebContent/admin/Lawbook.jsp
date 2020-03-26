<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Dashboard</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css"">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
	<style>

		html
		{
		}
			body
			{
				font-family: Roboto, sans-serif;
				color: #34434b;
				background-color: #f4fbfc;
				padding: 5rem 1.25rem; /* 80 20 */
			}

			.container
			{
				width: 100%;
				max-width: 640px; /* 960 */
				margin: 0 auto;
			}

			.container h1
			{
				font-size: 42px;
				font-weight: 300;
				color: #5594b3;
				margin-bottom: 40px;
			}
				.container h1 a:hover,
				.container h1 a:focus
				{
					color: #a664b7;
				}

			.container p
			{
				line-height: 1.6;
			}

			.faq
			{
			}
			.faq input
			{
				width: 100%;
				height: 60px;
				font-size: 20px;
				background-color: #fff;
				box-shadow: 0px 2px 4px rgba( 52, 67, 75, .2 );
				display: block;
				padding: 0 20px;
				margin-bottom: 40px;

				-webkit-transition: box-shadow .1s linear;
				transition: box-shadow .1s linear;
			}
			.faq input::-webkit-input-placeholder	{ color: #a1bdcb !important; }
			.faq input::-moz-placeholder			{ color: #a1bdcb !important; }
			.faq input:-ms-input-placeholder		{ color: #a1bdcb !important; }
			.faq input:focus
			{
				box-shadow: 0px 4px 8px rgba( 52, 67, 75, .4 );
			}
			.faq .highlight
			{
				background-color: #fffd77;
			}
			.faq > ul
			{
			}
				.faq > ul > li
				{
				}
				.faq > ul > li:not( :first-child )
				{
					border-top: 1px solid #dcebed;
					margin-top: 20px;
					padding-top: 20px;
				}
				.faq > ul > li.is-hidden
				{
					display: none;
				}
					.faq > ul > li h2
					{
						font-size: 24px;
						font-weight: 700;
					}
						.faq > ul > li h2:hover,
						.faq > ul > li h2:focus,
						.faq > ul > li.is-active h2,
						.faq > ul > li:target h2
						{
							color: #a664b7;
						}
					.faq > ul > li > div
					{
						display: none;
					}
					.faq > ul > li.is-active > div,
					.faq > ul > li:target > div
					{
						display: block;
						margin-top: 10px;
					}

				.faq__notfound
				{
					font-size: 20px;
					font-style: italic;
					display: none;
				}
				.faq__notfound.is-visible
				{
					display: block;
				}

			.container footer
			{
				color: #a1bdcb;
				margin-top: 40px;
			}
				.container footer a:hover,
				.container footer a:focus
				{
					color: #5594b3;
				}

	</style>
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<div class="main-content">
			<!-- Main Content -->
			<div class="container" role="main">

					<h1>Lawbook</h1>
				
					<div class="faq">
						<input type="search" value="" placeholder="Type some keywords" />
						<ul>
							<li id="faq-1">
								<h2><a href="#faq-1">Section 125 Salaries, etc., of Judges</a></h2>
								<div>
									<p>(1) There shall be paid to the Judges of the
				                        Supreme Court such salaries as may be determined by
				                        Parliament by law and, until provision in that behalf is
				                        so made, such salaries as are specified in the Second
				                        Schedule.
				                      </br>(2) Every Judge shall be entitled to such privileges
				                        and allowances and to such rights in respect of leave of
				                        absence and pension as may from time to time be
				                        determined by or under law made by Parliament and,
				                        until so determined, to such privileges, allowances and
				                        rights as are specified in the Second Schedule:
				                      </br>Provided that neither the privileges nor the
				                        allowances of a Judge nor his rights in respect of leave
				                        of absence or pension shall be varied to his disadvantage
				                        after his appointment.</p>
								</div>
							</li>
							<li id="faq-2">
								<h2><a href="#faq-2">Section 304 Restrictions on trade, commerce and intercourse among States</a></h2>
								<div>
				                    <p>Notwithstanding anything in article 301 or article 303, the Legislature of a State may by law—</p>
				                    <p>(a) impose on goods imported from other States 1
				                        [or the Union territories] any tax to which similar
				                        goods manufactured or produced in that State are subject, so, however, as not to discriminate between
				                        goods so imported and goods so manufactured or produced; and</p>
				                    <p>(b) impose such reasonable restrictions on the freedom of trade, commerce or intercourse with or within that State as may be required in the public interest:</p>
								</div>
							</li>
							<li id="faq-3">
								<h2><a href="#faq-3">Section 1 Name and territory of the Union</a></h2>
								<div>
									<p>(1) India, that is Bharat, shall be a Union of States.</p>
				                    <p>(2) The States and the territories thereof shall be as specified in the First Schedule.</p>
				                    <p>(3) The territory of India shall comprise—
				                    </br>(a) the territories of the States;
				                </br>(b) the Union territories specified in the First Schedule; and]
				            </br>(c) such other territories as may be acquired.
				                        </p>
								</div>
							</li>
							<li id="faq-4">
								<h2><a href="#faq-4">Section 43 Living wage, etc., for workers.</a></h2>
								<div>
									<p>The State shall endeavour to secure, by suitable legislation or economic organisation or in any other way, to all workers, agricultural, industrial or otherwise, work, a living wage, conditions of work ensuring a decent standard of life and full enjoyment of leisure and social and cultural opportunities and, in particular, the State shall endeavour to promote cottage industries on an individual or co-operative basis in rural areas.</p>
								</div>
							</li>
							<li id="faq-5">
								<h2><a href="#faq-5">Section 43A Participation of workers in management of industries</a></h2>
								<div>
									<p>The State shall take steps, by suitable legislation or in any other way, to secure the participation of workers in the management of undertakings, establishments or other organisations engaged in any industry.</p>
								</div>	
							</li>
							<li id="faq-6">
								<h2><a href="#faq-6">Section 43B Promotion of co-operative societies</a></h2>
								<div>
									<p>The State shall endeavour to promote voluntary formation, autonomous functioning, democratic control and professional management of co-operative societies</p>
								</div>
							</li>
						</ul>
						<div class="faq__notfound"><p>No matches were found&hellip; Try again.</p></div>
					</div>
				
				</div>

			<jsp:include page="footer.jsp"></jsp:include>


		</div>
	</div>
	</div>
	<!-- General JS Scripts -->
	<script src="adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script src="adminResources/js/apexcharts.min.js"></script>
	<!-- Page Specific JS File -->
	<script src="adminResources/js/index.js"></script>
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
	<script>

	'use strict';

	;( function ( document, window, index )
	{
		var hasElementClass		= function( element, className ){ return element.classList ? element.classList.contains( className ) : new RegExp( '(^| )' + className + '( |$)', 'gi' ).test( element.className ); },
			addElementClass		= function( element, className ){ element.classList ? element.classList.add( className ) : element.className += ' ' + className; },
			removeElementClass	= function( element, className ){ element.classList ? element.classList.remove( className ) : element.className = element.className.replace( new RegExp( '(^|\\b)' + className.split( ' ' ).join( '|' ) + '(\\b|$)', 'gi' ), ' ' ); };


		// search & highlight

		;( function ( document, window, index )
		{
			var container = document.querySelector( '.faq' );
			if( !container ) return true;

			var input			= container.querySelector( 'input' ),
				notfound		= container.querySelector( '.faq__notfound' ),
				items			= document.querySelectorAll( '.faq > ul > li' ),
				item			= {},
				itemsIndexed	= [];

			[].forEach.call( items, function( entry )
			{
				itemsIndexed.push( entry.textContent.replace( /\s{2,}/g, ' ' ).toLowerCase() );
			});

			input.addEventListener( 'keyup', function( e )
			{
				if( e.keyCode == 13 ) // enter
				{
					input.blur();
					return true;
				}

				[].forEach.call( items, function( entry )
				{
					entry.innerHTML = entry.innerHTML.replace( /<span class="highlight">([^<]+)<\/span>/gi, '$1' );
				});

				var searchVal = input.value.trim().toLowerCase();
				if( searchVal.length )
				{
					itemsIndexed.forEach( function( entry, i )
					{
						if( itemsIndexed[ i ].indexOf( searchVal ) != -1 )
						{
							removeElementClass( items[ i ], 'is-hidden' );
							items[ i ].innerHTML = items[ i ].innerHTML.replace( new RegExp( searchVal+'(?!([^<]+)?>)', 'gi' ), '<span class="highlight">$&</span>' );
						}
						else
							addElementClass( items[ i ], 'is-hidden' );
					});
				}
				else [].forEach.call( items, function( entry ){ removeElementClass( entry, 'is-hidden' ); });

				if( items.length == [].filter.call( items, function( entry ){ return hasElementClass( entry, 'is-hidden' ) } ).length )
					addElementClass( notfound, 'is-visible' );
				else
					removeElementClass( notfound, 'is-visible' );
					
			});
		}( document, window, 0 ));


		// toggling items on title press

		;( function ( document, window, index )
		{
			[].forEach.call( document.querySelectorAll( '.faq h2 a' ), function( entry )
			{
				addElementClass( entry, 'js--is-toggleable-item' );
			});

			document.addEventListener( 'click', function( e )
			{
				if( hasElementClass( e.target, 'js--is-toggleable-item' ) )
				{
					e.preventDefault();
					var current = e.target;
					while( current.parentNode )
					{
						current = current.parentNode;
						if( current.tagName.toLowerCase() == 'li' )
						{
							hasElementClass( current, 'is-active' ) ? removeElementClass( current, 'is-active' ) : addElementClass( current, 'is-active' );
							break;
						}
					}
				}
			});
		}( document, window, 0 ));


		// auto-show item content when show results reduces to single

		;( function ( document, window, index )
		{
			var container = document.querySelector( '.faq' );
			if( !container ) return true;

			var input	= container.querySelector( 'input' ),
				items	= document.querySelectorAll( '.faq > ul > li' ),
				item	= {};

			input.addEventListener( 'keyup', function( e )
			{
				item = [].filter.call( items, function( entry ){ return !hasElementClass( entry, 'is-hidden' ); } )

				if( item.length == 1 )
				{
					addElementClass( item[ 0 ], 'js--autoshown' );
					addElementClass( item[ 0 ], 'is-active' );
				}
				else
					[].forEach.call( items, function( entry )
					{
						if( hasElementClass( entry, 'js--autoshown' ) )
						{
							removeElementClass( entry, 'js--autoshown' );
							removeElementClass( entry, 'is-active' );
						}
					});
			});
		}( document, window, 0 ));

	}( document, window, 0 ));

</script>
</body>

</html>