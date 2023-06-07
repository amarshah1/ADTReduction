
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
(assert (not (is-Nil l3)) )
(assert (is-Nil l1) )
(assert (and (is-Cons Nil) (= l3 Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Nil l2) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Cons l0) (is-Cons Nil)) )
(check-sat)
