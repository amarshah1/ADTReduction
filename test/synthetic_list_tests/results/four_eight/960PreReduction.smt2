
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
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons l1) (is-Cons Nil)) )
(assert (= l2 l0) )
(assert (is-Nil l2) )
(assert (= l1 l3) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 Nil) (is-Nil l3)) )
(check-sat)