
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
(assert (not (= l3 Nil)) )
(assert (not (is-Cons l2)) )
(assert (and (is-Nil l0) (is-Cons Nil)) )
(assert (not (is-Nil l3)) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (= l2 l1) (= l2 Nil)) )
(assert (= l1 l3) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
