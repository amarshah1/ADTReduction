
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
(assert (is-Cons Nil) )
(assert (= l1 l2) )
(assert (or (= l2 l3) (= l1 Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (and (is-Cons l0) (is-Cons Nil)) )
(assert (not (= l3 l1)) )
(check-sat)
