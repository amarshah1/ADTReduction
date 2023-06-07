
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
(assert (= l1 Nil) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l2) (= l1 l1)) )
(assert (is-Cons l3) )
(assert (= l2 l2) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(check-sat)
