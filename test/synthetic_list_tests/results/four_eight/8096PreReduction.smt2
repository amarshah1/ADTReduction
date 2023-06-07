
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l2 l2) (is-Cons Nil) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(check-sat)
